<template>
    <a-layout id="components-layout-demo-top-side">
        <a-layout-header>
            <div class="logo" />
            <a-menu
                    theme="dark"
                    mode="horizontal"
                    :defaultSelectedKeys="['1']"
                    :selectedKeys="selectedkey"
                    :style="{ lineHeight: '64px' }"
            >
                <a-menu-item :top_navs="top_navs" key="1" @click="top_click">首页</a-menu-item>
                <a-menu-item :top_navs="top_navs" key="2" @click="top_click">资源合作</a-menu-item>
                <a-menu-item :top_navs="top_navs" key="3" @click="top_click">消息中心</a-menu-item>
            </a-menu>
            <div class="righter">
                <a-row :gutter="22">
                    <a-col :span="12">
                        <div class="righter_left">
                            <a-dropdown>
                                <a-badge count="25">
                                    <a-icon type="sound" style="font-size: 25px;color: #fff" />
                                </a-badge>
                                <a-menu slot="overlay">
                                    <a-menu-item key="4">
                                        <a target="_blank" rel="noopener noreferrer" href="">消息通知</a>
                                    </a-menu-item>
                                </a-menu>
                            </a-dropdown>
                        </div>
                    </a-col>
                    <a-col :span="12">
                        <div class="righter_right">
                            <a-dropdown>
                                <a-avatar :size="42" src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png" style="background-color:#fff" icon="user" />
                                <a-menu slot="overlay">
                                    <a-menu-item key="5" @click="showDrawer">
                                        <a-drawer
                                                title="个人资料"
                                                :width="720"
                                                @close="onClose"
                                                :visible="visible"
                                                :wrapStyle="{height: 'calc(100% - 108px)',overflow: 'auto',paddingBottom: '108px'}"
                                        >
                                            <a-card title="基本资料" :bordered="false">
                                                <a-form :form="form" layout="vertical" hideRequiredMark>
                                                    <a-row :gutter="16">
                                                        <a-col :span="24">
                                                            <a-upload
                                                                    name="avatar"
                                                                    listType="picture-card"
                                                                    class="avatar-uploader"
                                                                    :showUploadList="false"
                                                                    action="//jsonplaceholder.typicode.com/posts/"
                                                                    :beforeUpload="beforeUpload"
                                                                    @change="handleChange"
                                                            >
                                                                <img v-if="imageUrl" :src="imageUrl" alt="avatar" />
                                                                <div v-else>
                                                                    <a-icon :type="loading ? 'loading' : 'plus'" />
                                                                    <div class="ant-upload-text">上传头像</div>
                                                                </div>
                                                            </a-upload>
                                                        </a-col>
                                                    </a-row>
                                                    <a-row :gutter="16">
                                                        <a-col :span="12">
                                                            <a-form-item label="昵称">
                                                                <a-input
                                                                        v-decorator="['name', {
                                                                      rules: [{ required: true, message: '请输入您的昵称!' }]
                                                                    }]"
                                                                        placeholder="请输入您的昵称"
                                                                />
                                                            </a-form-item>
                                                        </a-col>
                                                        <a-col :span="12">
                                                            <a-form-item label="邮箱">
                                                                <a-input
                                                                        v-decorator="['email',
                                                                    {
                                                                      rules: [{
                                                                        type: 'email', message: '邮箱格式不正确!',
                                                                      }, {
                                                                        required: true, message: '请输入您的邮箱!',
                                                                      }]
                                                                    }
                                                                  ]"
                                                                        placeholder="请输入您的邮箱"
                                                                />
                                                            </a-form-item>
                                                        </a-col>
                                                    </a-row>
                                                    <a-row :gutter="16">
                                                        <a-col :span="12">
                                                            <a-form-item label="性别">
                                                                <a-select
                                                                        v-decorator="['sex', {
                                                                      rules: [{ required: true, message: '请选择您的性别!' }]
                                                                    }]"
                                                                        placeholder="请选择您的性别"
                                                                >
                                                                    <a-select-option value="1">男</a-select-option>
                                                                    <a-select-option value="0">女</a-select-option>
                                                                </a-select>
                                                            </a-form-item>
                                                        </a-col>
                                                        <a-col :span="12">
                                                            <a-form-item label="婚姻">
                                                                <a-select
                                                                        v-decorator="['marry', {
                                                                      rules: [{ required: true, message: '请选择您的婚姻状况!' }]
                                                                    }]"
                                                                        placeholder="请选择您的婚姻状况"
                                                                >
                                                                    <a-select-option value="1">已婚</a-select-option>
                                                                    <a-select-option value="0">未婚</a-select-option>
                                                                </a-select>
                                                            </a-form-item>
                                                        </a-col>
                                                    </a-row>
                                                    <a-row :gutter="16">
                                                        <a-col :span="12">
                                                            <a-form-item label="职业">
                                                                <a-select
                                                                        v-decorator="['approver', {
                                                                      rules: [{ required: true, message: '请选择您的职业!' }]
                                                                    }]"
                                                                        placeholder="请选择您的职业"
                                                                >
                                                                    <a-select-option value="jack">Jack Ma</a-select-option>
                                                                    <a-select-option value="tom">Tom Liu</a-select-option>
                                                                </a-select>
                                                            </a-form-item>
                                                        </a-col>
                                                        <a-col :span="12">
                                                            <a-form-item label="出生日期">
                                                                <a-date-picker
                                                                        v-decorator="['dateTime', {
                                                                      rules: [{ required: true, message: '请选择出生日期!' }]
                                                                    }]"
                                                                        style="width: 100%"
                                                                        :getPopupContainer="trigger => trigger.parentNode"
                                                                />
                                                            </a-form-item>
                                                        </a-col>
                                                    </a-row>
                                                    <a-row :gutter="16">
                                                        <a-col :span="24">
                                                            <a-form-item label="个人简介">
                                                                <a-textarea
                                                                        v-decorator="['description', {
                                                                      rules: [{ required: true, message: 'Please enter url description' }]
                                                                    }]"
                                                                        :rows="4"
                                                                        placeholder="请输入您的个人简介..."
                                                                />
                                                            </a-form-item>
                                                        </a-col>
                                                    </a-row>
                                            </a-form>
                                            </a-card>
                                            <div :style="{
                                              position: 'absolute',
                                              left: 0,
                                              bottom: 0,
                                              width: '100%',
                                              borderTop: '1px solid #e9e9e9',
                                              padding: '10px 16px',
                                              background: '#fff',
                                              textAlign: 'right',
                                            }"
                                            >
                                                <a-button
                                                        :style="{marginRight: '8px'}"
                                                        @click="onClose"
                                                >
                                                    取消
                                                </a-button>
                                                <a-button @click="onClose" type="primary">修改</a-button>
                                            </div>
                                            <a-modal
                                                    title="Title"
                                                    :visible="modalvisible"
                                                    @ok="handleOk"
                                                    :confirmLoading="confirmLoading"
                                                    @cancel="handleCancel"
                                            >
                                                <a-form :form="form">
                                                    <a-form-item
                                                            :labelCol="modalformItemLayout.labelCol"
                                                            :wrapperCol="modalformItemLayout.wrapperCol"
                                                            label='Name'
                                                    >
                                                        <a-input
                                                                v-decorator="[
          'username',
          {rules: [{ required: true, message: 'Please input your name' }]}
        ]"
                                                                placeholder='Please input your name'
                                                        />
                                                    </a-form-item>
                                                    <a-form-item
                                                            :labelCol="modalformItemLayout.labelCol"
                                                            :wrapperCol="modalformItemLayout.wrapperCol"
                                                            label='Nickname'
                                                    >
                                                        <a-input
                                                                v-decorator="[
                                                                  'nickname',
                                                                  {rules: [{ required: checkNick, message: 'Please input your nickname' }]}
                                                                ]"
                                                                placeholder='Please input your nickname'
                                                        />
                                                    </a-form-item>
                                                </a-form>
                                            </a-modal>
                                            <a-card title="安全资料" :bordered="false">
                                                <template class="ant-card-actions" slot="actions">
                                                    <div @click="showModal">
                                                        <a-icon type="user"/>
                                                        <p>账号</p>
                                                        <p>18333192320</p>
                                                    </div>
                                                    <div @click="showModal">
                                                        <a-icon type="lock" />
                                                        <p>密码</p>
                                                        <p>密码强度：弱</p>
                                                    </div>
                                                    <div @click="showModal">
                                                        <a-icon type="mail" />
                                                        <p>邮箱</p>
                                                        <p>lswlsw74520@163.com</p>
                                                    </div>
                                                </template>
                                            </a-card>
                                        </a-drawer>
                                        <a-icon type="user" />个人资料
                                    </a-menu-item>
                                    <a-menu-item key="6">
                                        <a-icon type="retweet" />更换皮肤
                                    </a-menu-item>
                                    <a-menu-divider />
                                    <a-menu-item key="7" @click="quit">
                                        <a-icon type="logout" />退出登录
                                    </a-menu-item>
                                </a-menu>
                            </a-dropdown>
                        </div>
                    </a-col>
                </a-row>
            </div>
        </a-layout-header>
    </a-layout>
</template>
<style>
    #components-layout-demo-top-side .logo {
        width: 120px;
        height: 31px;
        background: rgba(255,255,255,.2);
        margin: 16px 28px 16px 0;
        float: left;
    }
    .righter{
        position: absolute;
        top: 0;
        right: 25px;
        height: 64px;
        width: 200px;
    }
    .righter_left{
        text-align: center;
    }
    .righter_right{

    }
</style>
<script>
    import { loginout } from "@/api/user";
    function getBase64 (img, callback) {
        const reader = new FileReader();
        reader.addEventListener('load', () => callback(reader.result))
        reader.readAsDataURL(img)
    }
    const formItemLayout = {
        labelCol: { span: 4 },
        wrapperCol: { span: 8 },
    };
    const modalformItemLayout = {
        labelCol: { span: 7 },
        wrapperCol: { span: 12 },
    };
    const formTailLayout = {
        labelCol: { span: 4 },
        wrapperCol: { span: 8, offset: 4 },
    };
    export default {
        data() {
            return {
                form: this.$form.createForm(this),
                visible: false,
                imageUrl:'',
                loading:false,
                checkNick: false,
                formItemLayout,
                modalformItemLayout,
                formTailLayout,
                confirmLoading: false,
                modalvisible: false,
                top_navs:{},
                navs_routes:[
                    {1:'/',2:'/',3:'/PushMsg'}
                ],
                selectedkey:['1']
            }
        },
        methods:{
            quit(){
                const app = this;
                const user_token = localStorage.getItem('token');
                loginout(user_token).then(res=>{
                    if (res.status == 200) {
                        if (res.data.code == 40000) {
                            app.flag = localStorage.setItem('token','');
                            app.$router.push('/Login');
                        }else {
                            app.$Message.error(res.data.msg);
                        }
                    }
                });
            },
            showDrawer() {
                this.visible = true
            },
            onClose() {
                this.visible = false
            },
            handleChange (info) {
                if (info.file.status === 'uploading') {
                    this.loading = true;
                    return
                }
                if (info.file.status === 'done') {
                    // Get this url from response in real world.
                    getBase64(info.file.originFileObj, (imageUrl) => {
                        this.imageUrl = imageUrl;
                        this.loading = false
                    })
                }
            },
            beforeUpload (file) {
                const isJPG = file.type === 'image/jpeg';
                if (!isJPG) {
                    this.$message.error('You can only upload JPG file!')
                }
                const isLt2M = file.size / 1024 / 1024 < 2;
                if (!isLt2M) {
                    this.$message.error('Image must smaller than 2MB!')
                }
                return isJPG && isLt2M
            },
            check  () {
                this.form.validateFields(
                    (err) => {
                        if (!err) {
                            console.info('success');
                        }
                    },
                );
            },
            showModal() {
                this.modalvisible = true
            },
            handleOk() {
                this.ModalText = 'The modal will be closed after two seconds';
                this.confirmLoading = true;
                setTimeout(() => {
                    this.modalvisible = false;
                    this.confirmLoading = false;
                }, 2000);
            },
            handleCancel() {
                console.log('Clicked cancel button');
                this.modalvisible = false
            },
            top_click(top_navs){
                this.$router.push({path:this.navs_routes[0][top_navs.key]});
                this.selectedkey = [top_navs.key];
            },
        }
    }
</script>
