<template>
    <div class="activity">
    <top :showback="showback"></top>
        <div class="top_pic"></div>
        <div class="activity_details">
            <div class="activity_title">
                <p class="title">限时立减</p>
                <p class="text1">赠送彩色糖珠和巧克力笔</p>
            </div>
            <div class="small_banner">
                <div class="banner_pic">
                    <mt-swipe :auto="2000">
                        <mt-swipe-item><img src="../../assets/gzy/activity_img/9d3a5c15b52802f9.jpg" alt=""></mt-swipe-item>
                        <mt-swipe-item><img src="../../assets/gzy/activity_img/2.jpg" alt=""></mt-swipe-item>
                        <mt-swipe-item><img src="../../assets/gzy/activity_img/3.jpg" alt=""></mt-swipe-item>
                    </mt-swipe>
                </div>
                <div class="reve_text">
                    <div class="reve_title">
                        <i class="reve_head">童梦 Reve des enfants</i>
                        <i class="text1">此款蛋糕为DIY蛋糕</i>
                    </div>
                    <div class="reve_price">
                        <i>限量价:<span class="price">￥238</span><span class="text1">/1.3磅(590g)</span></i>
                        <i class="counts">限量:<span class="text1 my_text">300个</span></i>
                    </div>
                    <button class="my_btn">马上抢</button>
                </div>
            </div>
            <div>
                <div class="activity_title">
                    <p class="title">“童梦”蛋糕诞生小指南</p>
                </div>
                <div class="mypics">
                    <img src="../../assets/gzy/activity_img/2.jpg" alt="">
                    <p>1</p>
                    <p>准备好彩色糖珠</p>
                    <p>小勺子以及巧克力笔</p>
                    <img src="../../assets/gzy/activity_img/3.jpg" alt="">
                    <p>2</p>
                    <p>将糖珠铺在四段彩虹桥内</p>
                    <p>用巧克力笔在蛋糕下方空白处绘画</p>
                    <img src="../../assets/gzy/activity_img/2.jpg" alt="">
                    <p>3</p>
                    <p>你的新朋友“童梦”蛋糕诞生啦</p>
                    <div class="prompt">
                        <p>温馨提示:*该糖珠为蛋糕的装饰食材,</p>
                        <p>请小朋友在家长的陪同下操作，且不要一口吞食过多哦。</p>
                        <p>*将巧克力笔放入温水中浸泡10分钟后使用。</p>
                        <p>（水温不宜过高，会导致巧克力笔水油分离，无法使用）</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="rule">
            <p>活动规则:</p>
            <p>1.活动时间：6月26日-7月15日，最晚配送时间：7月30日</p>
            <p>2.活动城市：北京</p>
            <p>3.支付方式：微信、支付宝、现金</p>
            <p>4.凡在活动页购买童梦蛋糕限时价238元，数量有限，先到先得，买童梦蛋糕赠送彩色糖珠和巧克力笔，此款蛋糕为diy蛋糕</p>
            <p>5.本活动不与其他优惠同享</p>
            <p>6.本活动最终解释权归MCAKE所有</p>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return {
                showback:true,//页面显示城市选择/回退
            }
        },
        methods:{

        },
    }
</script>
<style scoped>
    .activity{
        width:100%;
    }
    .top_pic{
        width:100%;
        height:400px;
        background:url("../../assets/gzy/activity_img/9d3a5c15b52802f9.jpg") no-repeat;
        background-size:cover;
    }
    .activity_details{
        width:100%;
        height:1420px;
        background:#FAF5DE;
    }
    .activity_details .activity_title{
        margin:0 auto;
        width:100%;
        height:32px;
        text-align:center;
        padding:35px 0;
    }
    .activity_details .title{
        font-size:24px;
    }
    .text1{
        font-size:12px;
    }
    .small_banner{
        width:95%;
        height:180px;
        margin:0 auto;
        background:#FAEAAA;
        display:flex;
        justify-content:center;
        align-items:center;
    }
    .banner_pic{
        width:178px;
        height:180px;
    }
    .banner_pic img{
        width:100%;
        height:100%;
        over-flow:hidden;
    }
    .mint-swipe{
        width:100%;
        height:100% !important;
    }
    .reve_text{
        width:50%;
        height:180px;
        color:#ef3636;
    }
    .reve_text .reve_title{
        padding:20px 0 20px 8px;
    }
    .reve_text .reve_title .reve_head{
        font-size:15px;
        font-weight:bold;
    }
    .reve_price{
        padding:0 0 20px 10px;
    }
    .reve_text .reve_price .price{
        font-size:18px;
        font-weight:bold;
    }
    .my_text{
        margin-left:5px;
        padding:2px 5px;
        background-color:#fff;
        border-radius:10px;
    }
    .my_btn{
        display:block;
        width:90px;
        height:25px;
        color:#fff;
        background:#ef3636;
        border:0;
        margin-left:10px;
    }
    .mypics{
        justify-content:center;
        align-items:center;
        text-align:center;
    }
    .mypics img{
        width:250px;
        height:250px;
    }
    .mypics p{
        font-weight:bold;
    }
    .prompt{
        margin-top:30px;
        color:#F38518;
    }
    .prompt p{
        padding:5px 0;
    }
    .rule{
        width:90%;
        height:140px;
        background:#FAEAAA;
        padding:20px 19px;
    }
</style>