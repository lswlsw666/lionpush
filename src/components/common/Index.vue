<template>
    <div>
        <div style="background-color: #F0F0F0; padding: 10px;">
            <a-row :gutter="16">
                <a-col :span="8">
                    <a-card title="Card title1" :bordered=false>
                        <h2>10086</h2>
                        <div class="card-body">
                            <p>card content</p>
                            <a-progress :percent="30" class="process-firs"  size="small" />
                            <p>card content</p>
                            <a-progress :percent="50" class="process-secd" size="small" status="active" />
                        </div>
                    </a-card>
                </a-col>
                <a-col :span="8">
                    <a-card title="Card title2" :bordered=false>
                        <h2>10010</h2>
                        <div class="card-body">
                            <p>card content</p>
                            <a-progress :percent="30" class="process-firs" size="small" />
                            <p>card content</p>
                            <a-progress :percent="50" class="process-secd" size="small" status="active" />
                        </div>
                    </a-card>
                </a-col>
                <a-col :span="8">
                    <a-card title="Card title3" :bordered=false>
                        <h2>10000</h2>
                        <div class="card-body">
                            <p>card content</p>
                            <a-progress :percent="30" class="process-firs" size="small" />
                            <p>card content</p>
                            <a-progress :percent="50" class="process-secd" size="small" status="active" />
                        </div>
                    </a-card>
                </a-col>
            </a-row>
        </div>
        <div style="background-color: #F0F0F0; padding: 10px;">
            <v-chart :forceFit="true" :height="height" :data="data" :scale="scale" style="background-color: #fff;">
                <v-tooltip />
                <v-axis />
                <v-line position="year*value" />
                <v-point position="year*value" shape="circle" />
            </v-chart>
        </div>
        <div style="background-color: #F0F0F0; padding: 10px;">
            <a-row :gutter="16">
                <a-col :span="8">
                    <div class="progress_self">
                        <a-progress type="circle" :percent="30" :width="80" class="quan" />
                        <ul>
                            <li>一数据统计1</li>
                            <li>一数据统计2</li>
                            <li>一数据统计3</li>
                            <li>一数据统计4</li>
                        </ul>
                        <ul class="datalist">
                            <li>31415</li>
                            <li>926</li>
                            <li>78799</li>
                            <li>12</li>
                        </ul>
                        <h3>统计标题1</h3>
                    </div>

                </a-col>
                <a-col :span="8">
                    <div class="progress_self">
                        <a-progress type="circle" :percent="70" :width="80" class="quan" status="exception" />
                        <ul>
                            <li>二数据统计1</li>
                            <li>二数据统计2</li>
                            <li>二数据统计3</li>
                            <li>二数据统计4</li>
                        </ul>
                        <ul class="datalist">
                            <li>31415</li>
                            <li>926</li>
                            <li>78799</li>
                            <li>12</li>
                        </ul>
                        <h3>统计标题2</h3>
                    </div>
                </a-col>
                <a-col :span="8">
                    <div class="progress_self">
                        <a-progress type="circle" :percent="100" class="quan" :width="80" />
                        <ul>
                            <li>三数据统计1</li>
                            <li>三数据统计2</li>
                            <li>三数据统计3</li>
                        </ul>
                        <ul class="datalist">
                            <li>31415</li>
                            <li>926</li>
                            <li>78799</li>
                        </ul>
                        <h3>统计标题3</h3>
                    </div>
                </a-col>
            </a-row>
        </div>
    </div>
</template>
<style>
    .process-firs{
        color: red;
    }
    .process-secd{

    }
</style>
<style scoped>
    .ant-progress-circle-wrap,
    .ant-progress-line-wrap {
        margin-right: 8px;
        margin-bottom: 5px;
    }
    .progress_self{
        background-color: #fff;
        min-height: 200px;
        padding:20px 15px;
    }
    .card-body{
        width: 100%;
    }
    canvas{
        /*width: 100%;*/
    }
    ul{
        float: left;
        padding: 0 22px;
    }
    ul li{
        list-style: none;
        line-height: 28px;
        color: #B0B0B0;
    }
    .datalist{
        padding: 0 3px;
    }
    .datalist li{
        font-weight: bold;
        color: 	#707070;
    }
    .quan{
        float: left;
        padding-top: 18px;
        text-align: center;
    }
    h3{
        margin-top: 126px;
        padding-left: 10px
    }
    h2{
        color: 	#707070;
    }
    p{
        color: #B0B0B0;
    }
</style>
<script>
    const data = [
        { year: '1991', value: 3 },
        { year: '1992', value: 4 },
        { year: '1993', value: 3.5 },
        { year: '1994', value: 5 },
        { year: '1995', value: 4.9 },
        { year: '1996', value: 6 },
        { year: '1997', value: 7 },
        { year: '1998', value: 9 },
        { year: '1999', value: 13 },
    ];

    const scale = [{
        dataKey: 'value',
        min: 0,
    },{
        dataKey: 'year',
        min: 0,
        max: 1,
    }];

    export default {
        data() {
            return {
                data,
                scale,
                height: 400,
            };
        }
    };
</script>