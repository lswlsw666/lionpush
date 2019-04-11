<template>
    <a-list
            itemLayout="vertical"
            size="large"
            :pagination="pagination"
            :dataSource="content"
    >
        <div slot="footer"><b>ant design vue</b> footer part</div>
        <a-list-item slot="renderItem" slot-scope="item, index" key="item.title">
            <template slot="actions" v-for="{type, text,title,method} in actions">
                <span :key="type" :title="title" @click="msgClick(method,item.id)">
                  <a-icon :type="type" style="margin-right: 8px" />
                  {{text}}
                </span>
            </template>
            <!--<img slot="extra" width="272" alt="logo" src="https://gw.alipayobjects.com/zos/rmsportal/mqaQswcyDLcXyDKnZfES.png" />-->
            <img slot="extra" width="272" height="178" alt="logo" :src="item.m_pics" />
            <a-list-item-meta
                    :description="item.m_area+'|'+item.m_kind"
            >
                <a slot="title" :href="item.href"><b>{{item.m_title}}</b></a>
                <a-avatar slot="avatar" :src="avatar" />
            </a-list-item-meta>
            <a-row :gutter="16">
                <a-col :span="12" style="padding-left: 55px;">
                    <a-tag color="#f50">{{item.m_tel}}</a-tag><a-tag color="#2db7f5">{{item.m_invest_money}}</a-tag><a-tag color="#108ee9">{{item.m_company}}</a-tag>
                </a-col>
                <a-col :span="12" style="text-align: right;margin-top: -60px">
                    {{item.add_time}}
                    <br /><br />
                    <a-tag color="#00cc66">正常显示</a-tag>
                </a-col>
            </a-row>
            <div style="display: -webkit-box;
                        overflow: hidden;
                        text-overflow: ellipsis;
                        word-wrap: break-word;
                        white-space: normal !important;
                        -webkit-line-clamp: 2;
                        -webkit-box-orient: vertical;
                        text-indent: 26px;
                        padding-top: 6px;
                        ">
                {{item.m_description}}
            </div>
        </a-list-item>
    </a-list>
</template>
<script>
    import { editNews } from "@/api/msg";

    const listData = [];
    for (let i = 0; i < 23; i++) {
        listData.push({
            href: 'https://vuecomponent.github.io/ant-design-vue/',
            title: `ant design vue part ${i}`,
            avatar: 'https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',
            description: 'Ant Design, a design language for background applications, is refined by Ant UED Team.',
            content: 'We supply a series of design principles, practical patterns and high quality design resources (Sketch and Axure), to help people create their product prototypes beautifully and efficiently.',
        })
    }

    export default {
        props:['content'],
        data () {
            return {
                listData,
                pagination: {
                    onChange: (page) => {
                        // console.log(page);
                    },
                    pageSize: 3,
                },
                watch:{
                    $route:function () {
                        console.log(this.$router.name);
                    }
                },
                actions: [
                    { type: 'edit',title:'编辑',method:'edit_msg'},
                    { type: 'delete',title:'删除',method:'delete_msg'},
                    { type: 'eye', text: '11211' ,title:'浏览次数'},
                    { type: 'star-o', text: '156',title:'收藏次数'},
                    { type: 'like-o', text: '156',title:'点赞次数' },
                    { type: 'message', text: '2',title:'评论次数' },
                ],
                avatar: 'https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',
            }
        },
        methods:{
            msgClick(m,id) {
                const app = this;
                switch (m) {
                    case 'edit_msg':
                        editNews(id).then(res=>{
                            if (res.status == 200) {
                                if (res.data.code == 40000) {
                                    localStorage.setItem('editdatas',JSON.stringify(res.data.data));//将修改信息存入缓存
                                    app.app_editdatas = JSON.stringify(res.data.data);
                                    app.$router.push('/PushMsg');
                                }else {
                                    app.$Message.error(res.data.msg);
                                }
                            }
                        });
                        break;
                        // alert('编辑信息么？老铁');break;
                    case 'delete_msg':alert('删除信息么？老铁');break;
                    default:alert('想干嘛？老铁');break;
                }
            }
        }
    }
</script>
<style>
    .ant-list-vertical .ant-list-item-meta {
        margin-bottom: 6px;
    }
</style>
