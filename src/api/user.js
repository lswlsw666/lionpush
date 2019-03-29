/**
 * lsw 2019 01 09
 */
import http from '../assets/js/http';
import {async} from "q";

/**
 * 用户登录
 * @param account
 * @param password
 * @param remember
 * @returns {Promise<*>}
 */
export async function login({userName, password, remember = false}){
   return http.post('/member/User/login',
       {
           userName,
            password,
            remember,
       });

}

/**
 * 用户注册
 * @param userName
 * @param password
 * @param code
 * @param agreement
 * @returns {Promise<*>}
 */
export async function regist( {userName, password,code,agreement = false}){
    return http.post('/member/User/regist',
        {
            userName,
            password,
            code,
            agreement,
        });
}

/**
 * 校验注册用户名是否已注册
 * @param userName
 * @returns {*}
 */
export function checkUsername(userName) {
    return http.post('/member/User/checkuser',
        {
            userName,
        });
}

/**
 * 校验登录用户名是否存在
 * @param userName
 * @returns {*}
 */
export function checkLoginName(userName) {
    return http.post('/member/User/checkloginuser',
        {
            userName,
        });
}

/**
 * 退出
 * @param user_token
 * @returns {Promise<*>}
 */
export async function loginout(user_token) {
    return http.post('/member/User/loginout',
        {
            user_token
        });
}

