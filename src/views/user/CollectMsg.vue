<template>
    <div style="padding: 10px;background: #F0F0F0;height: 100%;">
        <!--<h2 style="color: #2524ff">我收藏的消息</h2>-->
        <div style="background: #fff;">
            <a-tabs defaultActiveKey="1" @change="callback">
                <a-tab-pane style="padding: 28px" tab="我的收藏" key="1">
                    <Msg></Msg>
                </a-tab-pane>
            </a-tabs>
        </div>
    </div>
</template>
<script>
    import Msg  from '@/views/user/Msg.vue';
    export default {
        components: {
            Msg
        },
        methods:{
            callback(key){
                console.log(key);
            },
        }
    }
</script>