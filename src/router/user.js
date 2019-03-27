import Vue from 'vue/dist/vue.min'
//1.导入路由组件vue-router
import Router from 'vue-router'
import Pub  from '@views/user/PublishMsg.vue';
import Col  from '@views/user/CollectMsg.vue';
import Sta  from '@views/user/StationNotice.vue';
//2.调用vue-router
Vue.use(Router);
//3.创建vue-router实例
const router=new Router({
    routes: [
        {
            path: '/Pub',
            name:'Pub',
            component: Pub
        },
        {
            path: '/Col', //路径
            name: 'Col', //名称
            component: Col //组件
        },
        {
            path: '/Sta', //路径
            name: 'Sta', //名称
            component: Sta //组件
        }
    ]
});
export default router;