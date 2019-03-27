<template>
    <a-layout-content style="padding: 1px 50px;background: #f0f2f5">
        <a-breadcrumb style="margin: 16px 0">
            <a-breadcrumb-item v-for="title in navtitle" :key="title.key">{{title.text}}</a-breadcrumb-item>
            <!--<a-breadcrumb-item >home</a-breadcrumb-item>-->
            <!--<a-breadcrumb-item>List</a-breadcrumb-item>-->
            <!--<a-breadcrumb-item>App</a-breadcrumb-item>-->
        </a-breadcrumb>
        <a-layout style="padding: 0; background: #fff">
            <a-layout-sider width="200" style="background: linear-gradient(to bottom, #0AFFF3, #EDFFF6);">
                <div style="height: 265px;">
                    <div style="text-align: center;padding-top: 25px">
                        <a-avatar :size="95" src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png" style="background-color:#fff"/>
                    </div>
                    <ul class="pers-info">
                        <li style="font-weight: bold;font-size: 18px">为梦攻城666</li>
                        <li style="font-size: 13px">18333192320</li>
                    </ul>
                    <div style="padding: 0 10px">
                        <a-tag color="blue">男</a-tag>
                        <a-tag color="purple">23</a-tag>
                        <a-tag color="pink">未婚</a-tag>
                        <a-tag color="red">清华大学</a-tag>
                        <!--<a-tag color="orange">orange</a-tag>-->
                        <!--<a-tag color="green">green</a-tag>-->
                        <a-tag color="cyan">PHP开发工程师</a-tag>
                    </div>
                    <a-divider type="horizontal" style="margin: 8px 0 0 0" />
                </div>
                <a-menu class="left-menu"
                            mode="inline"
                            :openKeys="openKeys"
                            @openChange="onOpenChange"
                    >
                        <a-sub-menu key="sub1">
                            <span slot="title"><a-icon type="user" />用户中心</span>
                            <a-menu-item key="1" :navs="navs" @click="add">我发布的信息</a-menu-item>
                            <a-menu-item key="2" :navs="navs" @click="add">我收藏的信息</a-menu-item>
                            <a-menu-item key="3" :navs="navs" @click="add">我的站内通知</a-menu-item>
                        </a-sub-menu>
                        <a-sub-menu key="sub2">
                            <span slot="title"><a-icon type="laptop" />广告系统</span>
                            <a-menu-item key="4" :navs="navs" @click="add">产品购买</a-menu-item>
                            <a-menu-item key="5" :navs="navs" @click="add">站外推广</a-menu-item>
                            <a-menu-item key="6" :navs="navs" @click="add">标王推广</a-menu-item>
                            <a-menu-item key="7" :navs="navs" @click="add">精品官网</a-menu-item>
                        </a-sub-menu>
                        <a-sub-menu key="sub3">
                            <span slot="title"><a-icon type="notification" />账户管理</span>
                            <a-menu-item key="8" :navs="navs" @click="add">我的资料</a-menu-item>
                            <a-menu-item key="9" :navs="navs" @click="add">我的认证</a-menu-item>
                            <a-menu-item key="10" :navs="navs" @click="add">账户明细</a-menu-item>
                            <a-menu-item key="11" :navs="navs" @click="add">我的反馈</a-menu-item>
                        </a-sub-menu>
                    </a-menu>
            </a-layout-sider>
            <a-layout-content :style="{ padding: '6px 6px', minHeight: '754px'}">
                <div>
                    <!--<div :style="{ marginBottom: '16px' }">-->
                        <!--<a-button @click="add">ADD</a-button>-->
                    <!--</div>-->
                    <a-tabs
                            hideAdd
                            v-model="activeKey"
                            type="editable-card"
                            @edit="onEdit"
                            @tabClick="tabClick"
                    >
                        <a-tab-pane v-for="pane in panes" :tab="pane.title" :key="pane.key" :closable="pane.closable">
                            <router-view></router-view>
                        </a-tab-pane>
                    </a-tabs>
                </div>
            </a-layout-content>
        </a-layout>
    </a-layout-content>
</template>
<script>
    export default {
        name: 'Content',
        components:{

        },
        props: {
            msg: String
        },
        data () {
            const navtitle = [
                { text: '首页',key:'0',pid:'0'},
            ];
            const panes = [
                { title: '首页', content: '首页内容', key: '0',url:'/Index',closable:false },
            ];
            const navsTitle = [
                {1:'我发布的信息',2:'我收藏的信息',3:'我的站内通知',4:'产品购买',5:'站外推广',6:'标王推广',7:'精品官网',8:'我的资料',9:'我的认证',10:'账户明细',11:'我的反馈'}
            ];
            const menu = [
                {1:'Pub',2:'Col',3:'Sta',4:'产品购买',5:'站外推广',6:'标王推广',7:'精品官网',8:'我的资料',9:'我的认证',10:'账户明细',11:'我的反馈'}
            ];
            return {
                rootSubmenuKeys: ['sub1', 'sub2', 'sub3'],
                // openKeys: ['sub1'],
                openKeys: [],
                activeKey: panes[0].key,
                panes,
                newTabIndex: 0,
                navs: {
                    'sub1': ['1', '2', '3'], 'sub2': ['5','6','7','8'], 'sub3': ['9','10','11','12'],
                },
                navsTitle,
                menu,
                navtitle,
            }
        },
        watch:{
          $route:function () {
              // console.log(this.$router);
          }
        },
        methods: {
            onOpenChange (openKeys) {
                const latestOpenKey = openKeys.find(key => this.openKeys.indexOf(key) === -1);
                if (this.rootSubmenuKeys.indexOf(latestOpenKey) === -1) {
                    this.openKeys = openKeys
                } else {
                    this.openKeys = latestOpenKey ? [latestOpenKey] : []
                }
            },
            callback (key) {
                console.log(key)
            },
            onEdit (targetKey, action) {
                this[action](targetKey)
            },
            add (navs) {
                const panes = this.panes;
                const key = panes.findIndex((ele)=>{
                    return ele.key == navs.key;
                });
                const activeKey = navs.key;
                if(key === -1){
                    var a = {title:this.navsTitle[0][navs.key],content:this.navsTitle[0][navs.key],key:navs.key};
                    panes.push(a);
                }
                this.panes = panes;
                this.activeKey = activeKey;
                this.$router.push({path:'/'+this.menu[0][navs.key]});
                // var b = {text:this.navsTitle[0][navs.key]};
                // this.navtitle.push(b);
            },
            remove (targetKey) {
                let activeKey = this.activeKey;
                let lastIndex;
                this.panes.forEach((pane, i) => {
                    if (pane.key === targetKey) {
                        lastIndex = i - 1
                    }
                });
                const panes = this.panes.filter(pane => pane.key !== targetKey);
                if (lastIndex >= 0 && activeKey === targetKey) {
                    activeKey = panes[lastIndex].key
                }
                // this.navtitle.splice(targetKey,1);
                this.panes = panes;
                this.activeKey = activeKey;
                if (this.activeKey > 0) {
                    if (this.activeKey == 1){
                        // this.$router.push({path:'/'+this.menu[0][this.activeKey]+'/Msg'});
                        this.$router.push({path:'/'+this.menu[0][this.activeKey]});
                        // this.$router.push({ name: this.menu[0][this.activeKey], params: '/Msg'})
                    }else{
                        this.$router.push({path:'/'+this.menu[0][this.activeKey]});
                    }
                }else{
                    this.$router.push({path:'/'});
                }
            },
            tabClick(key){
                if (key > 0){
                    this.$router.push({path:'/'+this.menu[0][key]});
                }else{
                    this.$router.push({path:'/'});
                }
            }
        },
    }
</script>
<style>
    .ant-menu-sub.ant-menu-inline{
        background: linear-gradient(to bottom, #52FFF2, #60e4ff);
    }
    .ant-menu:not(.ant-menu-horizontal) .ant-menu-item-selected{
        background: #596679;
    }
</style>
<style scoped>
    .ant-menu {
        background: linear-gradient(to bottom, #52FFF2, #60e4ff);
    }
    .pers-info{
        padding: 12px 0 0 0;
        text-align: center;
    }
    ul li{
        list-style: none;
        color: #fff;
        line-height: 30px;
    }
</style>