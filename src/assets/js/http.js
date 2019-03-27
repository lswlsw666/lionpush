/**
 * 请求配置
 */
import Axios from "axios";
import router from './../../router';
// import url from '../../assets/js/url.js';

const http = Axios.create({
    // 设置Content - Type
    headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
    }
});
// Vue.use(VueAxios,http);

//请求拦截器
//请求之前
//http request 请求拦截器，有token值则配置上token值
http.interceptors.request.use(
    config => {
        const token = localStorage.getItem('token');
        if (token) {  // 每次发送请求之前判断是否存在token，如果存在，则统一在http请求的header都加上token，不用每次请求都手动添加
            config.headers.Authorization = `Bearer ${token}`;
        }
        // config.url = url.dev_url + config.url;//配置代理后请求接口写相对路径，不需要再拼接，所以屏蔽此行
        if (config.method === 'post') {
            const querystring = require('querystring');
            config.data = querystring.stringify(config.data);
        }
        return config;
    },
    err => {
        return Promise.reject(err);
    }
);
//http response 拦截器 ,拦截401状态（token过期），重新登录
http.interceptors.response.use(
    response => {
        return response;
    },
    error => {
        if (error.response) {
            switch (error.response.status) {
                case 401:
                    // 返回 401 清除token信息并跳转到登录页面
                    localStorage.removeItem('token');
                    router.replace({
                        path: '/Login',
                        query: {redirect: router.currentRoute.fullPath}
                    })
            }
        }
        return Promise.reject(error.response.data)   // 返回接口返回的错误信息
    });
export default http;