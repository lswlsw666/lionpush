<template>
    <a-list
            itemLayout="vertical"
            size="large"
            :pagination="pagination"
            :dataSource="content"
    >
        <div slot="footer"><b>ant design vue</b> footer part</div>
        <a-list-item slot="renderItem" slot-scope="item, index" key="item.title">
            <template slot="actions" v-for="{type, text} in actions">
                <span :key="type">
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
                    <b style="color: red">{{item.m_tel}}</b>/{{item.m_invest_money}}/{{item.m_company}}
                </a-col>
                <a-col :span="12" style="text-align: right;">
                    {{item.add_time}}
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
                    { type: 'star-o', text: '156' },
                    { type: 'like-o', text: '156' },
                    { type: 'message', text: '2' },
                ],
                avatar: 'https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',
            }
        },
    }
</script>
<style>
    .ant-list-vertical .ant-list-item-meta {
        margin-bottom: 6px;
    }
</style>
