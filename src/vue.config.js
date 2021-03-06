module.exports = {
    css: {
        loaderOptions: {
            less: {
                modifyVars: {
                    'primary-color': '#1DA57A',
                    'link-color': '#1DA57A',
                    'border-radius-base': '2px',
                },
                javascriptEnabled: true
            }
        }
    },
    // devServer:{
    //     port: 8080, // 端口号
    //     host: 'localhost',
    //     https: false, // https:{type:Boolean}
    //     open: true, //配置自动启动浏览器
    //     proxy:{
    //         '/member':{
    //             target:'http://www.lionpush.com/',
    //             changeOrigin: true,
    //             ws: true,
    //             pathRewrite:{
    //                 '^/member':''
    //             }
    //         }
    //     }
    // },
    devServer:{
        proxy:'http://www.lionpush.com/'
    }
};