<template>
    <div style="width: 100%;height: 100%;">
        <a-layout-content style="height:100%;width: 100%;padding: 1px 200px;background: #f0f2f5">
            <a-breadcrumb separator="|" style="margin: 16px 0">
                <a-breadcrumb-item ><a style="color: red" href="javascript:void(0);" @click="showDrawer">{{selectedcity}}</a></a-breadcrumb-item>
                <a-breadcrumb-item ><a href="javascript:void(0);" @click="showDrawer">[切换城市]</a></a-breadcrumb-item>
            </a-breadcrumb>
            <a-drawer
                    title="请选择城市"
                    placement="right"
                    height="85%"
                    width="100%"
                    :destroyOnClose="true"
                    :closable="true"
                    @close="onClose"
                    :visible="area_visible"
            >
                <ul class="province-ul">
                    <li v-for="province in data.areainfo" :key="province.id">
                        {{province.name}}
                        <a class="city-a" @click="selectCity(province.id,city.id)" v-for="city in province.city" :key="city.id">
                            {{city.name}}
                        </a>
                    </li>
                </ul>
            </a-drawer>
            <a-card title="发送消息" class="msg-card">
                <a-form id='components-form-demo-validate-other' @submit="handleSubmit" :form="form">
                    <a-form-item
                            v-bind="formItemLayout"
                            label='标题'
                    >
                        <a-input
                                v-decorator="[
                                  'title',
                                  {rules: [{ required: true, message: '请输入您的标题!' },
                                    {validator: checkTitle},
                                  ]}
                                ]"
                                placeholder='请输入您的标题(不得超过26个字符，且不能填写任何联系方式)'
                                maxlength="26"
                        />
                    </a-form-item>
                    <a-form-item
                            v-bind="formItemLayout"
                            label='服务内容'
                            hasFeedback
                    >
                        <a-select
                                v-decorator="[
                                    'service',
                                    {rules: [{ required: true, message: '请选择您的服务内容!' }]}
                                  ]"
                                placeholder='请选择您的服务内容'
                        >
                            <a-select-option v-for="service in servicedata.serviceinfo"
                                 :key="service.id"
                                 :value='service.name'
                                 @click="selectService(service.id)"
                            >
                                {{service.name}}
                            </a-select-option>
                        </a-select>
                    </a-form-item>
                    <a-form-item
                            v-bind="formItemLayout"
                            v-show="servicevisible"
                            label='服务小类'
                    >
                        <a-checkbox
                                :indeterminate="indeterminate"
                                @change="onCheckAllChange"
                                :checked="checkAll"
                        >
                            全选
                        </a-checkbox>
                        <br />
                        <a-checkbox-group :options="plainOptions" v-model="checkedList" @change="onChange" />
                    </a-form-item>
                    <a-form-item
                            v-bind="formItemLayout"
                            label='服务范围'
                    >
                        <a-checkbox
                                :indeterminate="indeterarea"
                                @change="areaCheckAllChange"
                                :checked="checkAreasAll"
                        >
                            全选
                        </a-checkbox>
                        <br />
                        <a-checkbox-group :options="areaOptions" v-model="areaCheckedList" @change="areaChange" />
                        <!--<a-checkbox-group style="width: 100%;" @change="areaChange" v-decorator="['checkbox-group', {}]">-->
                            <!--<a-row>-->
                                <!--<a-col :span="6" v-for="(citydata,index) in citydatas" :key="index">-->
                                    <!--<a-checkbox :value="citydata.id" >-->
                                    <!--{{citydata.name}}-->
                                    <!--</a-checkbox>-->
                                <!--</a-col>-->
                            <!--</a-row>-->
                        <!--</a-checkbox-group>-->
                    </a-form-item>
                    <a-form-item
                            v-bind="formItemLayout"
                            label='投资金额'
                    >
                        <!--v-decorator="['radio-group']"-->
                        <a-radio-group v-decorator="['invest_money',{required: true, message: '请选择投资金额!'}]">
                            <a-radio value='a'>1万以下</a-radio>
                            <a-radio value='b'>1~5万</a-radio>
                            <a-radio value='c'>5~10万</a-radio>
                            <a-radio value='d'>10~20万</a-radio>
                            <a-radio value='e'>20~50万</a-radio>
                            <a-radio value='f'>50万以上</a-radio>
                        </a-radio-group>
                    </a-form-item>
                    <a-form-item
                            v-bind="formItemLayout"
                            label='品牌名称'
                    >
                        <a-input
                                v-decorator="[
                                  'brand_name',
                                  {rules: [{ required: true, message: '请输入品牌名称!' }]}
                                ]"
                                placeholder='请输入品牌名称!'
                                maxlength="26"
                        />
                    </a-form-item>
                    <a-divider type="horizontal" style="margin: 8px 0 16px 0" />
                    <a-form-item
                            v-bind="formItemLayout"
                            label='公司名称'
                    >
                        <a-input
                                v-decorator="[
                                  'company',
                                  {rules: [{ required: true, message: '请输入您的公司名称!' }]}
                                ]"
                                placeholder='请输入您的公司名称'
                                maxlength="26"
                        />
                    </a-form-item>
                    <!--<a-form-item-->
                            <!--v-bind="formItemLayout"-->
                            <!--label="描述"-->
                    <!--&gt;-->
                        <!--<a-textarea-->
                                <!--v-decorator="['description', {-->
                                  <!--rules: [{ required: true, message: '请输入产品描述!' }]-->
                                <!--}]"-->
                                <!--:rows="4"-->
                                <!--:autosize="true"-->
                                <!--placeholder="请输入产品描述..."-->
                        <!--/>-->
                    <!--</a-form-item>-->
                    <a-form-item
                            v-bind="formItemLayout"
                            label='图片'
                    >
                        <div class='dropbox' style="height: 100%">
                            <a-upload-dragger
                                    v-decorator="['pics', {
                                      valuePropName: 'fileList',
                                      getValueFromEvent: normFile,
                                    }]"
                                    name='files'
                                    action='/member/Msg/uploadPic'
                                    method="post"
                                    accept="image/png,image/jpeg"
                                    listType="picture"
                                    :multiple="true"
                                    :beforeUpload="beforeUpload"
                                    :headers="authorization"
                                    @change="handleUpload"
                                    class="upload-list-inline"
                            >
                                <p class='ant-upload-drag-icon'>
                                    <a-icon type='inbox' />
                                </p>
                                <p class='ant-upload-text'>点击或拖拽图片上传</p>
                                <p class='ant-upload-hint'>支持单一或多个图片上传</p>
                            </a-upload-dragger>
                        </div>
                    </a-form-item>
                    <a-form-item
                            v-bind="formItemLayout"
                            label='微信号'
                    >
                        <a-input
                                v-decorator="[
                                  'weixin',
                                  {rules: [{ required: true, message: '请输入您的微信号!' }]}
                                ]"
                                placeholder='请输入您的微信号'
                                maxlength="20"
                        />
                    </a-form-item>
                    <a-form-item
                            v-bind="formItemLayout"
                            label='联系人'
                    >
                        <a-input
                                v-decorator="[
                                  'contactuser',
                                  {rules: [{ required: true, message: '请输入联系人名称!' }]}
                                ]"
                                placeholder='请输入联系人名称'
                                maxlength="10"
                                minlength="2"
                        />
                    </a-form-item>
                    <a-form-item
                            v-bind="formItemLayout"
                            label='联系电话'
                    >
                        <a-input
                                v-decorator="[
                                  'tel',
                                  {rules: [{ required: true, message: '请输入您的联系电话!' },
                                    {validator: checkTel},
                                  ]}
                                ]"
                                placeholder='请输入您的联系电话'
                                maxlength="13"
                        />
                    </a-form-item>
                    <a-form-item
                            v-bind="formItemLayout"
                            label='描述'
                            :required="true"
                    >
                        <quill-editor :options="editorOption"
                              @change="des_change"
                              v-model="description"
                        ></quill-editor>
                    </a-form-item>
                    <a-form-item
                            :wrapperCol="{ span: 12, offset: 6 }"
                    >
                        <a-button type='primary' htmlType='submit'>立即发布</a-button>
                    </a-form-item>
                    <a-spin tip="发布中..." size="large" :style="objectStyle">
                    </a-spin>
                </a-form>
            </a-card>
        </a-layout-content>
    </div>
</template>
<script>
    import { getAreas,getService } from '@/api/area';
    import { pushNews } from "@/api/msg";
    import AFormItem from "ant-design-vue/es/form/FormItem";
    import 'quill/dist/quill.core.css'
    import 'quill/dist/quill.snow.css'
    import 'quill/dist/quill.bubble.css'
    const plainOptions = [];
    const token =`Bearer ${localStorage.getItem('token')}`;
    export default {
        components: {AFormItem},
        beforeCreate () {
            window.test = this;
            this.form = this.$form.createForm(this);
        },
        mounted () {
            const editdatas = JSON.parse(localStorage.getItem('editdatas'));
            this.getData((res) => {
                this.data = res.result;
                var minid = this.data.areainfo[editdatas.m_province_id-1].city[0].id;
                this.selectedcity = this.data.areainfo[editdatas.m_province_id-1].city[editdatas.m_city_id-minid].name;
                this.citydatas = this.data.areainfo[editdatas.m_province_id-1].city[editdatas.m_province_id-minid].district;
                if (this.citydatas.length > 0){
                    var areaList = [];
                    for (var i = 0; i < this.citydatas.length;i++){
                        areaList.push(this.citydatas[i].name);
                    }
                    this.areaOptions = areaList;
                }
                this.areaCheckedList = editdatas.m_area.split(',');
                this.indeterarea = !!this.areaCheckedList.length && (this.areaCheckedList.length < this.areaOptions.length);
                this.checkAreasAll = this.areaCheckedList.length === this.areaOptions.length;

            });
            this.getServiceData((res) =>{
                this.servicedata = res.results;
                this.plainOptions = this.servicedata.serviceinfo[editdatas.m_service_id-1].info;
                this.checkedList = editdatas.m_kind.split(',');
                this.indeterminate = !! this.checkedList.length && (this.checkedList.length < this.plainOptions.length);
                this.checkAll = this.checkedList.length === this.plainOptions.length;
                this.service_id = editdatas.m_service_id;
                if (this.plainOptions.length > 0){
                    this.servicevisible = true;
                }else{
                    this.servicevisible = false;
                }
            });
            // this.description = editdatas.m_description;
            // this.fileList = editdatas.m_pics;
            //编辑信息内容
            this.$nextTick(() => {
                this.form.setFieldsValue({
                    title: editdatas.m_title,
                    service: editdatas.m_service,
                    invest_money: editdatas.m_invest_money,
                    brand_name: editdatas.m_brand_name,
                    company: editdatas.m_company,
                    // description: editdatas.m_description,
                    pics: editdatas.m_pics,
                    // fileList: editdatas.m_pics,
                    weixin: editdatas.m_weixin,
                    contactuser: editdatas.m_contactuser,
                    tel: editdatas.m_tel,
                });
            })

        },
        data (){
          return {
              formLayout: 'horizontal',
              form: this.$form.createForm(this),
              formItemLayout: {
                  labelCol: { span: 6 },
                  wrapperCol: { span: 10 },
              },
              checkedList: [],
              areaCheckedList: [],
              indeterminate: false,
              indeterarea: false,
              checkAll: false,
              checkAreasAll: false,
              plainOptions,
              areaOptions: localStorage.getItem('areaList').split(',') || [],
              area_visible:false,
              servicevisible:false,
              data:[],
              selectedcity:localStorage.getItem('city')?localStorage.getItem('city'):'全国',
              citydatas:JSON.parse(localStorage.getItem('citydatas'))|| [],
              servicedata:[],
              objectStyle: {
                  display:'none'
              },
              editdatas:[],
              authorization:{'Authorization':token} || [],
              service_id:localStorage.getItem('service_id')?localStorage.getItem('service_id'):1,
              city_id: localStorage.getItem('city_id')?localStorage.getItem('city_id'):1,
              province_id: localStorage.getItem('province_id')?localStorage.getItem('province_id'):0,
              editorOption: {
                  modules: {
                      toolbar: [
                          ['bold', 'italic', 'underline'],
                          [{ 'header': 1 }, { 'header': 2 }],
                          [{ 'list': 'ordered' }, { 'list': 'bullet' }],
                          [{ 'size': ['small', false, 'large', 'huge'] }],
                          [{ 'color': [] }],
                          [{ 'align': [] }],
                          ['clean'],
                          // ['image']
                      ]
                  },
                  placeholder: '请输入产品描述...'
              },
              description:'',
          }
        },
        methods: {
            getData (callback){
                getAreas().then(res=>{
                    callback(res.data);
                });

            },
            getServiceData (callback){
                getService().then(res=>{
                    callback(res.data);
                })
            },
            handleSubmit(e) {
                e.preventDefault();
                const app = this;
                app.objectStyle.display = 'block';
                this.form.validateFields((err, values) => {
                    values.kind = app.checkedList.join(',');
                    values.area = app.areaCheckedList.join(',');
                    values.service_id = app.service_id;
                    values.city_id = app.city_id;
                    values.province_id = app.province_id;
                    if (values.pics) {
                        var pics = values.pics;
                        var picList = [];
                        for (var i = 0;i < pics.length;i++){
                            if (pics[i].status == 'done') {
                                picList.push(pics[i].response.path);
                            }
                        }
                        if (picList.length > 0){
                            values.pics = picList.join(',');
                        }
                    }
                    if (app.description.length > 0){
                        values.description = app.description;
                    }
                    if (values.area.length <= 0) {
                        app.$Message.error('请选择服务范围!');
                    }
                    if (!values.invest_money) {
                        app.$Message.error('请选择投资金额!');
                    }
                    if (!err && values.area.length > 0 && values.invest_money) {
                        pushNews(values).then(res=>{
                            if (res.status == 200) {
                                if (res.data.code == 40000) {
                                    app.$Message.success(res.data.msg);
                                    app.objectStyle.display = 'none';
                                    app.$router.push('/Pub');
                                }else {
                                    app.$Message.error(res.data.msg);
                                    app.objectStyle.display = 'none';
                                }
                            }
                        });
                    }
                });
            },
            handleSelectChange(value) {
                this.form.setFieldsValue({
                    note: `Hi, ${value === 'male' ? 'man' : 'lady'}!`,
                });
            },
            normFile  (e) {
                if (Array.isArray(e)) {
                    return e;
                }
                return e && e.fileList;
            },
            beforeUpload (file){
                const isLt2M = file.size / 1024 /1024 < 2;
                if (!isLt2M) {
                    this.$Message.error('图片不能超过2M');
                }
                return isLt2M;
            },
            handleUpload(info) {
                const status = info.file.status;
                if (status === 'done') {
                    this.$Message.success(`${info.file.name} 上传成功`);
                } else if (status === 'error') {
                    this.$Message.error(`${info.file.name} 上传失败`);
                }
            },
            onChange (checkedList) {
                this.indeterminate = !!checkedList.length && (checkedList.length < this.plainOptions.length);
                this.checkAll = checkedList.length === this.plainOptions.length;
            },
            onCheckAllChange (e) {
                Object.assign(this, {
                    checkedList: e.target.checked ? this.plainOptions : [],
                    indeterminate: false,
                    checkAll: e.target.checked,
                })
            },
            areaChange (areaCheckedList) {
                this.indeterarea = !!areaCheckedList.length && (areaCheckedList.length < this.areaOptions.length);
                this.checkAreasAll = areaCheckedList.length === this.areaOptions.length;
            },
            areaCheckAllChange (e){
                Object.assign(this, {
                    areaCheckedList: e.target.checked ? this.areaOptions : [],
                    indeterarea: false,
                    checkAreasAll: e.target.checked,
                })
            },
            showDrawer() {
                this.area_visible = true
            },
            onClose() {
                this.area_visible = false
            },
            selectCity(e,f) {
                var minid = this.data.areainfo[e-1].city[0].id;
                this.selectedcity = this.data.areainfo[e-1].city[f-minid].name;
                this.citydatas = this.data.areainfo[e-1].city[f-minid].district;
                this.area_visible = false;
                if (this.citydatas.length > 0){
                    var areaList = [];
                    for (var i = 0; i < this.citydatas.length;i++){
                        areaList.push(this.citydatas[i].name);
                    }
                    this.areaOptions = areaList;
                    localStorage.setItem('citydatas',JSON.stringify(this.citydatas));
                    localStorage.setItem('areaList',areaList);
                }
                this.city_id = f;
                this.province_id = e;
                this.indeterarea = false;
                localStorage.setItem('city',this.selectedcity);
                localStorage.setItem('city_id',f);
                localStorage.setItem('province_id',e);
            },
            selectService(e) {
                this.service_id = e;
                this.plainOptions = this.servicedata.serviceinfo[e-1].info;
                this.indeterminate = false;
                this.checkAll = false;
                this.checkedList = [];
                if (this.plainOptions.length > 0){
                    this.servicevisible = true;
                }else{
                    this.servicevisible = false;
                }
                localStorage.setItem('service_id',e);
            },
            checkTitle (rule,value,callback) {
                if (value){
                    const regex = /^0\\d{2,3}-?\\d{7,8}$|\d{11}|\d{11}\w|\d{9}$/;//验证是否为联系方式
                    if (regex.test(value)) {
                        callback('请勿填写任何联系方式!');
                    }
                }
                callback();
            },
            checkTel (rule,value,callback) {
                if (value){
                    const regex = /^0\\d{2,3}-?\\d{7,8}$|\d{11}$/;//验证是否为联系方式
                    if (!regex.test(value)) {
                        callback('联系电话输入有误!');
                    }
                }
                callback();
            },
            des_change() {
                console.log(this.description);
            }
        },
    }
</script>
<style>
    .msg-card{
        height: 100%;
        width: 100%;
        min-height: 1000px;
    }
    .province-ul{
        /*text-align: left;*/
    }
    .province-ul li{
        list-style: none;
        color: red;
    }
    .city-a{
        margin-left: 15px;
        color: black;
    }
    #components-form-demo-validate-other .dropbox {
        height: 180px;
        line-height: 1.5;
    }

    /* tile uploaded pictures */
    .upload-list-inline >>> .ant-upload-list-item {
        float: left;
        width: 200px;
        margin-right: 8px;
    }
    .upload-list-inline >>> .ant-upload-animate-enter {
        animation-name: uploadAnimateInlineIn;
    }
    .upload-list-inline >>> .ant-upload-animate-leave {
        animation-name: uploadAnimateInlineOut;
    }
/**
富文本编辑器
 */
    .quill-editor {
        height: 100%;
        min-height: 300px;
    }
    .ql-container {
        height: 100%;
        min-height: 300px;
    }
    .ql-snow .ql-editor img {
        max-width: 480px;
    }

    .ql-editor .ql-video {
        max-width: 480px;
    }
</style>