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
                                          {
                                          rules: [{ required: true, message: '请输入您的用户名/手机号/邮箱!'},
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
                                              { rules: [{ required: true, message: '请输入您的密码!' }] }
                                            ]"
                                        type='password'
                                        placeholder='密码'
                                >
                                    <a-icon slot="prefix" type='lock' style="color: rgba(0,0,0,.25)" />
                                </a-input>
                            </a-form-item>
                            <a-form-item>
                                <a-checkbox
                                    v-decorator="[
                                      'remember',
                                      {
                                        valuePropName: 'checked',
                                        initialValue: true,
                                      }
                                    ]"
                                >
                                    记住密码
                                </a-checkbox>
                                <a class='login-form-forgot' href=''>忘记密码</a>
                                <a-button type='primary' htmlType='submit' class='login-form-button'>
                                    登录
                                </a-button>
                                还没有账号？<a href='javascript:void(0);' @click="reg">马上注册</a>
                                <a href='javascript:void(0);' @click="test">测试组件</a>
                            </a-form-item>
                        </a-form>
                </a-col>
                <div class="login-mask" :style="objectStyle">
                </div>
                <a-spin tip="登录中..." size="large" :style="objectStyle">
                </a-spin>
            </a-row>
        </div>
    </div>
</template>

<script>
    import { login,checkLoginName } from "@/api/user";
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
            }
        },
        methods: {
            handleSubmit (e) {
                e.preventDefault()
                const app = this;
                this.form.validateFields((err, values) => {
                    if (!err) {
                        // app.flag = localStorage.setItem('token',1);
                        app.objectStyle.display = 'block';
                        login(values).then(res=>{
                                if (res.status == 200){
                                    if (res.data.code == 40000){
                                        setTimeout(function () {
                                            app.flag = localStorage.setItem('token',res.data.token);
                                            app.$Message.success(res.data.msg);
                                            app.objectStyle.display = 'none';
                                        },1000);
                                        setTimeout(function () {
                                            app.$router.push('/');
                                        },3000);
                                    }else{
                                        setTimeout(function () {
                                            app.$Message.error(res.data.msg);
                                            app.objectStyle.display = 'none';
                                        },1000);
                                    }
                                }
                            }
                        );
                        // console.log('Received values of form: ', values);
                        app.$router.push('/');
                    }
                })
            },
            checkUser(rule,value,callback){
                if (value) {
                    checkLoginName(value).then(res=>{
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
            canplay() {
                this.vedioCanPlay = false;
            },
            reg(){
                this.$router.push('/Register');
            },
            test(){
                this.$router.push('/Test');
            }
        },
    }
</script>
<style>
    .login-part{
        position: fixed;
        width: 100%;
        height: 100%;
    }
    .login{
        position: absolute;
        height: 33%;
        width: 36%;
        margin: 0 32%;
        margin-top: 18%;
        min-width: 652px;
        min-height: 308px;
        border-radius: 10px 10px 10px 10px;
    }
    .login-row{
        position: absolute;
        height: 100%;
        width: 100%;
    }
    .login-col1{
        height: 100%;
        width: 55%;
        min-height: 293px;
        min-width: 358px;
        padding: 0 !important;
        background-color: rgba(89, 102, 121, 0.5);

        /*background: #596679;color: #f73f29;*/
        /*filter:alpha(Opacity=38);-moz-opacity:0.6;opacity: 0.6;*/

        border-radius: 5px 0 0 5px;
    }
    .login-col2{
        height: 100%;
        width: 45%;
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
        margin: -30% 28%;
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