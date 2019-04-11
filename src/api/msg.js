/**
 * lsw 2019 01 07
 */
import http from '../assets/js/http';
export function getNews() {
    const url = 'https://randomuser.me/api/?results=5&inc=name,gender,email,nat&noinfo';
    return http.get(url)
}

/**
 * 获取所有信息
 * @param user_token
 * @returns {*}
 */
export function allNews() {
    return http.post('member/Msg/index');
}

/**
 * 发布消息
 * @param title
 * @param service
 * @param kind
 * @param area
 * @param invest_money
 * @param brand_name
 * @param company
 * @param description
 * @param pics
 * @param weixin
 * @param contactuser
 * @param tel
 * @param city_id
 * @param service_id
 * @param province_id
 * @returns {Promise<*>}
 */
export async function pushNews({title,service,kind,area,invest_money,brand_name,company,description,pics,weixin,contactuser,tel,city_id,service_id,province_id}) {
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
        city_id,//城市id
        service_id,//服务id
        province_id,//服务id
    });
}

/**
 * 编辑信息
 * @param id
 * @param user_token
 * @returns {Promise<*>}
 */
export async function editNews(id) {
    return http.post('member/Msg/editNews',{id});
}
