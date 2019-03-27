import Vue from 'vue/dist/vue.min'
//1.导入路由组件vue-router
import Router from 'vue-router'
import Index from '@/components/common/Index.vue';
import User from '@/views/User.vue';

//用户中心
import Pub  from '@/views/user/PublishMsg.vue';
import Col  from '@/views/user/CollectMsg.vue';
import Sta  from '@/views/user/StationNotice.vue';
import Login from '@/views/user/Login.vue';
import Register from '@/views/user/Register.vue';
import Test from '@/views/user/Test.vue';

import Msg  from '@/views/user/Msg.vue';
import PushMsg  from '@/views/msg/PushMsg.vue';


//2.调用vue-router
Vue.use(Router);
//3.创建vue-router实例
const router=new Router({
    routes: [
        // {
        //     path: '/Index',
        //     redirect: '/Index'
        // },
        {
            path:'/Login',
            name:'Login',
            component:Login
        },
        {
            path:'/Register',
            name:'Register',
            component:Register,
        },
        {
            path:'/Test',
            name:'Test',
            component:Test,
        },
        {
            path: '/PushMsg',
            name:'PushMsg',
            component: PushMsg,
            meta: {
                requireAuth: true
            },
        },
        {
            path: '/',
            name:'Index',
            component: Index,
            meta: {
                requireAuth: true
            },
        },
        {
            path: '/User', //路径
            name: 'User', //名称
            component: User, //组件
            meta: {
                requireAuth: true
            },
        },
        /**
         * 用户中心
         */
        {
            path: '/Pub',
            name:'Pub',
            component: Pub,
            children:[
                {
                    path:'Msg',
                    name:'Msg',
                    component:Msg,
                    meta: {
                        requireAuth: true
                    },
                }
            ],
            meta: {
                requireAuth: true
            },
        },
        {
            path: '/Col', //路径
            name: 'Col', //名称
            component: Col, //组件
            meta: {
                requireAuth: true
            },
        },
        {
            path: '/Sta', //路径
            name: 'Sta', //名称
            component: Sta, //组件
            meta: {
                requireAuth: true
            },
        }

    ]
});
router.beforeEach((to, from, next) => {
    // localStorage.setItem('flag',false);
    // localStorage.setItem('token','');
    if (to.matched.some(res => res.meta.requireAuth)) {// 判断是否需要登录权限
        if (localStorage.getItem('token')) {// 判断是否登录
            // console.log(to.name);
            // if (to.name === 'PushMsg'){
            //     console.log(111);
            //     localStorage.setItem('flag',false);
            // }
            next();
        } else {// 没登录则跳转到登录界面
            next({
                path: '/Login',
                // query: {redirect: to.fullPath}
            })
        }
    } else {
        next()
    }
});
export default router;