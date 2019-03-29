/**
 * lsw 2019 01 07
 */
import http from '../assets/js/http';
export function getNews() {
    const url = 'https://randomuser.me/api/?results=5&inc=name,gender,email,nat&noinfo';
    return http.get(url)
}

export function allNews(user_token) {
    return http.post('member/Msg/index',{user_token});
}

export async function pushNews({title,service,kind,area,invest_money,brand_name,company,description,pics,weixin,contactuser,tel}) {
    return http.post('member/Msg/pushNews',{
        title,//标题
        service,//服务内容
        kind,//服务种类
        area,//服务范围
        invest_money,//投资金额
        brand_name,//品牌名称
        company,//公司名称
        description,//描述
        pics,//图片
        weixin,//微信
        contactuser,//联系人
        tel,//电话
    });
}
