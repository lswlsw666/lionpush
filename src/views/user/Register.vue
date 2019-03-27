<template>
    <div class="login-part">
        <section class="section-video">
            <video autoplay loop class="fillWidth" v-on:canplay="canplay">
                <source src="../../../public/images/bgvideo2.webm" type="video/webm"/>
                浏览器不支持 video 标签，建议升级浏览器。
                <source src="../../../public/images/bgvideo2.mp4" type="video/mp4"/>
                浏览器不支持 video 标签，建议升级浏览器。
            </video>
            <div class="primary-video mode-mobile" v-if="!vedioCanPlay">
                <img src="../../../public/images/bgpic2.jpg" alt="">
            </div>
        </section>
        <div class="login">
            <a-row :gutter="1" class="login-row">
                <a-col :span="12" class="login-col1">
                    <div class="logo-part">
                        <h3>欢迎来到</h3>
                        <a-divider type="horizontal" style="width: 80%;min-width: 50%;margin: 8px 0;"/>
                        <h2>狮&nbsp;推&nbsp;网</h2>
                    </div>
                </a-col>
                <a-col :span="12" class="login-col2">
                    <a-form :form="form" id='components-form-demo-normal-login' @submit="handleSubmit" class='login-form'>
                        <a-form-item>
                            <a-input
                                    placeholder='用户名/手机号/邮箱'
                                    v-decorator="[
                                      'userName',
                                      { rules: [{ required: true, message: '请输入您的用户名/手机号/邮箱!' },
                                      {
                                        validator: checkUser,
                                      }
                                      ] }
                                    ]"
                            >
                                <a-icon slot="prefix" type='user' style="color: rgba(0,0,0,.25)" />
                            </a-input>
                        </a-form-item>
                        <a-form-item>
                            <a-input
                                    v-decorator="[
                                      'password',
                                      { rules: [{ required: true, message: '请输入您的密码!' },{
                                        validator: this.validateToNextPassword,
                                      }] }
                                    ]"
                                    type='password'
                                    placeholder='密码至少6位，区分大小写'
                            >
                                <a-icon slot="prefix" type='lock' style="color: rgba(0,0,0,.25)" />
                            </a-input>
                        </a-form-item>
                        <a-form-item>
                            <a-input
                                    v-decorator="[
                                      'confirmpassword',
                                      { rules: [{ required: true, message: '请输入您的密码!' },
                                      {
                                        validator: compareToFirstPassword,
                                      }] }
                                    ]"
                                    type='password'
                                    @blur="handleConfirmBlur"
                                    placeholder='再次输入您的密码，与之前需一致'
                            >
                                <a-icon slot="prefix" type='lock' style="color: rgba(0,0,0,.25)" />
                            </a-input>
                        </a-form-item>
                        <a-form-item>
                            <a-row :gutter="8">
                                <a-col :span="12">
                                    <a-input
                                            v-decorator="[
                                                'code',
                                                {rules: [{ required: true, message: '请输入短信验证码!' }]}
                                              ]"
                                            placeholder='请输入短信验证码'
                                    />
                                </a-col>
                                <a-col :span="12">
                                    <a-button>获取验证码</a-button>
                                </a-col>
                            </a-row>
                        </a-form-item>
                        <a-form-item>
                            <a-checkbox
                                    v-decorator="[
                                    'agreement',
                                    {valuePropName: 'checked'},
                                    ]"
                            >我已阅读并同意此 <a href=''>协议</a></a-checkbox>
                        </a-form-item>
                        <a-form-item>
                            <a-button type='primary' htmlType='submit'>立即注册</a-button>
                            已有账号？<a href='javascript:void(0);' @click="tologin">马上登录</a>
                        </a-form-item>
                    </a-form>
                </a-col>
                <div class="login-mask" :style="objectStyle">
                </div>
                <a-spin tip="注册中..." size="large" :style="objectStyle">
                </a-spin>
            </a-row>
        </div>
    </div>
</template>

<script>
    import { regist,checkUsername } from "@/api/user";
    const vedioCanPlay = true;
    export default {
        name:'login',
        beforeCreate () {
            this.form = this.$form.createForm(this)
        },
        data (){
            return{
                vedioCanPlay,
                objectStyle: {
                    display:'none'
                },
                confirmDirty: false,
            }
        },
        methods: {
            handleSubmit  (e) {
                e.preventDefault();
                const app = this;
                this.form.validateFieldsAndScroll((err, values) => {
                    if (!err) {
                        if (values.agreement){
                            app.objectStyle.display = 'block';
                            regist(values).then(res=>{
                                if (res.status == 200){
                                    if (res.data.code == 40000){
                                        setTimeout(function () {
                                            app.$Message.success(res.data.msg);
                                            app.objectStyle.display = 'none';
                                        },2000);
                                        setTimeout(function () {
                                            app.$router.push('/Login');
                                        },3000);
                                    }else{
                                        setTimeout(function () {
                                            app.$Message.error(res.data.msg);
                                            app.objectStyle.display = 'none';
                                        },2000);
                                    }
                                }
                            });
                        }else{
                            app.$Message.error('请仔细阅读并同意注册协议！');
                        }
                        // console.log('Received values of form: ', values)
                    }
                })
            },
            handleConfirmBlur  (e) {
                const value = e.target.value;
                this.confirmDirty = this.confirmDirty || !!value
            },
            compareToFirstPassword  (rule, value, callback) {
                const form = this.form;
                if (value && value !== form.getFieldValue('password')) {
                    callback('两次输入的密码不一致!')
                } else {
                    callback()
                }
            },
            validateToNextPassword  (rule, value, callback) {
                const form = this.form;
                if (value){
                    if (value.length < 6){
                        callback(new Error('密码长度需大于6位'));
                    }
                }
                if (value && this.confirmDirty) {
                    form.validateFields(['confirm'], { force: true })
                }
                callback();
            },
            checkUser(rule,value,callback){
                if (value) {
                    checkUsername(value).then(res=>{
                        if (res.status == 200){
                            if (res.data.code == 40000){
                                callback();
                            }else{
                                callback(res.data.msg)
                            }
                        } else{
                            callback('参数有误!')
                        }
                    })
                }else{
                    callback();
                }
            },
            checkProtocol(rule,value,callback){
                console.log(value);
            },
            canplay() {
                this.vedioCanPlay = false;
            },
            tologin(){
                this.$router.push('/Login');
            },
        },
    }
</script>
<style scoped>
    .login-part{
        position: fixed;
        width: 100%;
        height: 100%;
    }
    .login{
        position: absolute;
        height: 42%;
        width: 38%;
        margin: 0 31%;
        margin-top: 16%;
        min-width: 720px;
        min-height: 420px;
        border-radius: 10px 10px 10px 10px;
    }
    .login-row{
        position: absolute;
        height: 100%;
        width: 100%;
    }
    .login-col1{
        height: 100%;
        width: 50%;
        min-height: 293px;
        min-width: 358px;
        padding: 0 !important;
        background-color: rgba(89, 102, 121, 0.5);
        border-radius: 5px 0 0 5px;
    }
    .login-col2{
        height: 100%;
        width: 50%;
        min-height: 293px;
        min-width: 293px;
        padding: 0 !important;
        background: #fff;
        border-radius: 0 5px 5px 0;
    }
    .login-mask{
        height: 100%;
        width: 100%;
        padding: 0 !important;
        background:#fff;
        z-index:9999;
        opacity:0.4;                        /*背景的透明度:(Firefox适用；）*/
        filter:alpha(opacity = 40);        /*背景的透明度:(IE适用)  */
        border-radius: 5px 5px 5px 5px;
    }
    .ant-spin{
        position: absolute;
        width: 100%;
        height: 20%;
        margin: -35% 25%;
    }
    .logo-part{
        text-align: left;
        padding-top: 32%;
        padding-left: 20%;
    }
    .logo-part h2{
        font-size: 30px;
        font-family: 新宋体;
        font-weight: bold;
        color: #fff;
    }
    .logo-part h3{
        color: #fff;
    }
    .login-form{
        position: absolute;
        height: 80%;
        width: 80%;
        margin: 0 10%;
        background: #fff;
        margin-top: 28px;
    }
    #components-form-demo-normal-login .login-form-forgot {
        float: right;
    }
    #components-form-demo-normal-login .login-form-button {
        width: 100%;
    }
    .section-video {
        position: fixed;
        height: 100%;
        width: 100%;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
    }
    .primary-video{
        max-width: none;
        max-height: 100%;
        min-width: 100%;
        min-height: 100%;
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translateX(-50%) translateY(-50%);
    }
    .mode-desktop{
        display: block!important
    }
    .mode-mobile{
        display: none!important
    }
</style>