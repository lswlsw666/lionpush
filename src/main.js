import Vue from 'vue'
// import Button from 'ant-design-vue/lib/button'
// import 'ant-design-vue/dist/antd.css'
// import Vue from 'vue/dist/vue.min.js';
import VueRouter from 'vue-router';
import ViserVue from 'viser-vue';
//导入路由
import router from './router';
import { Button } from 'ant-design-vue';
import { Layout } from 'ant-design-vue';
import { Menu } from 'ant-design-vue';
import { Breadcrumb } from 'ant-design-vue';
import { Icon } from 'ant-design-vue';
import { Tabs } from 'ant-design-vue';
import { Card } from 'ant-design-vue';
import { Row } from 'ant-design-vue';
import { Col } from 'ant-design-vue';
import { Progress } from 'ant-design-vue';
import { Avatar } from 'ant-design-vue';
import { Divider } from 'ant-design-vue';
import { Tag } from 'ant-design-vue';
import { List } from 'ant-design-vue';
import { Form } from 'ant-design-vue';
import { Input } from 'ant-design-vue';
import { InputNumber } from 'ant-design-vue';
import { Checkbox } from 'ant-design-vue';
import { Spin } from 'ant-design-vue';
import { Message } from 'ant-design-vue';
import { Select } from 'ant-design-vue';
import { Badge } from 'ant-design-vue';
import { Dropdown } from 'ant-design-vue';
import { Popover } from 'ant-design-vue';
import { Drawer } from 'ant-design-vue';
import { Upload } from 'ant-design-vue';
import { DatePicker } from 'ant-design-vue';
import { Modal } from 'ant-design-vue';
import { Switch } from 'ant-design-vue';
import { Slider } from 'ant-design-vue';
import { Radio } from 'ant-design-vue';
import { Rate } from 'ant-design-vue';
import { Cascader } from 'ant-design-vue';


import App from './App'
Vue.use(Button);
Vue.use(Layout);
Vue.use(Breadcrumb);
Vue.use(Menu);
Vue.use(Icon);
Vue.use(Tabs);
Vue.use(Card);
Vue.use(Row);
Vue.use(Col);
Vue.use(VueRouter);
Vue.use(Progress);
Vue.use(ViserVue);
Vue.use(Avatar);
Vue.use(Divider);
Vue.use(Tag);
Vue.use(List);
Vue.use(Form);
Vue.use(Input);
Vue.use(InputNumber);
Vue.use(Checkbox);
Vue.use(Spin);
Vue.prototype.$Message = Message;
Vue.use(Select);
Vue.use(Badge);
Vue.use(Dropdown);
Vue.use(Popover);
Vue.use(Drawer);
Vue.use(Upload);
Vue.use(DatePicker);
Vue.use(Modal);
Vue.use(Switch);
Vue.use(Slider);
Vue.use(Radio);
Vue.use(Rate);
Vue.use(Cascader);
Vue.config.productionTip = false;

/* eslint-disable no-new */
new Vue({
    el: '#app',
    router,
    components: { App },
    template: '<App/>'
}).$mount('#app');
