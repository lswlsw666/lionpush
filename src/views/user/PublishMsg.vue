<template>
    <div style="padding: 10px;background: #F0F0F0;height: 100%;">
        <a-row :gutter="16">
            <a-col :span="12">
                <a-card title="信息收录率" :bordered=false>
                    <a-row :gutter="16">
                        <a-col :span="12" style="text-align: center">
                            <a-progress type="circle" :percent="75" />
                        </a-col>
                        <a-col :span="12">
                            <ul>
                                <li>被收录占比</li>
                                <p>75%</p>
                                <li>待收录占比</li>
                                <p>25%</p>
                            </ul>
                        </a-col>
                    </a-row>
                </a-card>
            </a-col>
            <a-col :span="12">
                <a-row :gutter="16">
                    <a-col :span="12">
                        <a-card>
                            <a-col :span="12" style="text-align: center">
                                <a-icon type="message" style="font-size: 40px;color: #1890ff" />
                            </a-col>
                            <a-col :span="12">
                                <p>1000</p>
                                <span>消息总数</span>
                            </a-col>
                        </a-card>
                    </a-col>
                    <a-col :span="12">
                        <a-card>
                            <a-col :span="12" style="text-align: center">
                                <a-icon type="eye" style="font-size: 40px;color: #52c41a" />
                            </a-col>
                            <a-col :span="12">
                                <p>1000</p>
                                <span>总浏览</span>
                            </a-col>
                        </a-card>
                    </a-col>
                </a-row>
                <a-row :gutter="16">
                    <a-col :span="12">
                        <a-card>
                            <a-col :span="12" style="text-align: center">
                                <a-icon type="smile" style="font-size: 40px;color: hotpink" />
                            </a-col>
                            <a-col :span="12">
                                <p>1000</p>
                                <span>被收录</span>
                            </a-col>
                        </a-card>
                    </a-col>
                    <a-col :span="12">
                        <a-card>
                            <a-col :span="12" style="text-align: center">
                                <a-icon type="frown" style="font-size: 40px;" />
                            </a-col>
                            <a-col :span="12">
                                <p>1000</p>
                                <span>未收录</span>
                            </a-col>
                        </a-card>
                    </a-col>
                </a-row>
            </a-col>
        </a-row>
        <div style="background: #fff;margin-top: 10px;">
            <a-tabs defaultActiveKey="1" @change="callback" @tabClick="tabClick">
                <a-tab-pane style="padding: 28px" v-for="msgtitle in msgtabs" :tab="msgtitle.title" :key="msgtitle.key">
                    <Msg :content="messages"></Msg>
                </a-tab-pane>
            </a-tabs>
        </div>
    </div>
</template>
<script>
    import ARow from "ant-design-vue/es/grid/Row";
    import Msg  from '@/views/user/Msg.vue';
    import { allNews } from "@/api/msg";
    import ACol from "ant-design-vue/es/grid/Col";
    export default {
        components: {
            ACol,
            ARow,Msg
        },
        mounted () {
            this.getNewsData((res) => {
                this.messages = res.data;
            });
        },
        data () {
            const msgtabs = [
                {title:'所有信息','key':'1','url':'total',content:'所有信息'},
                {title:'被收录','key':'2','url':'record',content:'被收录'},
                {title:'待收录','key':'3','url':'notrecord',content:'待收录'},
            ];
            return {
                msgtabs,
                messages:[],
            }

        },
        methods:{
            getNewsData (callback){
                const token = localStorage.getItem('token');
                const app = this;
                allNews(token).then(res=>{
                    if (res.status == 200){
                        if (res.data.code == 40000){
                            callback(res.data);
                        } else {
                            app.$Message.error(res.data.msg);
                            localStorage.setItem('token','');
                            this.$router.push('/Login');
                        }
                    }
                });

            },
            tabClick(key){
                // console.log(key);
            },
            callback(key){
                // console.log(key);
            },
        }
    }
</script>
<style>
    p{
        font-weight: bold;
    }
    .ant-card-body{
        padding: 30px;
    }
</style>