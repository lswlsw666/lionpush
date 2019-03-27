<template>
    <div style="padding: 10px;background: #F0F0F0;height: 100%;">
        <!--<h2 style="color: #2524ff">我发布的消息</h2>-->
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
                            <p>1000</p>
                            <span>消息总数</span>
                        </a-card>
                    </a-col>
                    <a-col :span="12">
                        <a-card>
                            <p>10000</p>
                           <span>总浏览</span>
                        </a-card>
                    </a-col>
                </a-row>
                <a-row :gutter="16">
                    <a-col :span="12">
                        <a-card>
                            <p>750</p>
                            <span>被收录</span>
                        </a-card>
                    </a-col>
                    <a-col :span="12">
                        <a-card>
                            <p>250</p>
                            <span>未收录</span>
                        </a-card>
                    </a-col>
                </a-row>
            </a-col>
        </a-row>
        <div style="background: #fff;margin-top: 10px;">
            <a-tabs defaultActiveKey="1" @change="callback" @tabClick="tabClick">
                <a-tab-pane style="padding: 28px" v-for="msgtitle in msgtabs" :tab="msgtitle.title" :key="msgtitle.key">
                    <Msg></Msg>
                </a-tab-pane>
            </a-tabs>
        </div>
    </div>
</template>
<script>
    import ARow from "ant-design-vue/es/grid/Row";
    import Msg  from '@/views/user/Msg.vue';
    export default {
        components: {
            ARow,Msg
        },
        data () {
            const msgtabs = [
                {title:'所有信息','key':'1','url':'total',content:'所有信息'},
                {title:'被收录','key':'2','url':'record',content:'被收录'},
                {title:'待收录','key':'3','url':'notrecord',content:'待收录'},
            ];
            return {
                msgtabs,
            }

        },
        methods:{
            tabClick(key){
                console.log(key);
            }
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