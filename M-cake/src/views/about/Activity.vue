<template>
<!--活动页面-->
    <div class="active">
        <top :showback="showback" :checked="checked"></top>
        <ul class="huodong_in">
            <router-link :to="{path:'/activitydetail'}"><li><div>活动进行中</div><img src="../../assets/qy/9b9b1d7551393dc8.png">
            <p>2019年夏日专题</p></li></router-link>
            <router-link :to="{path:'/activitydetail'}"><li><div>活动进行中</div><img src="../../assets/qy/c8d50bdc1358068d.jpg">
            <p>北京童梦限时立减</p></li></router-link>
            <router-link :to="{path:'/activitydetail'}"><li><div>{{stime}}</div><img src="../../assets/qy/e527626522291470.jpg">
            <p>2019年7月会员日</p></li></router-link>
            <router-link :to="{path:'/activitydetail'}"><li><div>活动进行中</div><img src="../../assets/qy/a3b3dfee48a4f747.jpg">
            <p>2019年小食专场</p></li></router-link>
            <router-link :to="{path:'/activitydetail'}"><li><div>活动进行中</div><img src="../../assets/qy/505919594451f493.jpg">
            <p>2019年新人福利</p></li></router-link>   
        </ul>
    </div>
</template>
<script>
    function dt(){
        var time=new Date();
        var ms=time.getTime();
        var days=Math.floor(ms/(1000*60*60*24));
        var xtime=new Date();
        xtime.setTime(days*1000*60*60*24);
        console.log(time);
        for(var i=days;xtime.getDay()!=2;i++){
            xtime.setTime(i*1000*60*60*24);
        }
        console.log(xtime);
        var dtime=xtime-time+1000*60*60*2;
        console.log(dtime);
        var day=Math.floor(dtime/(1000*60*60*24));
        var hour=Math.floor(dtime-day*24*60*60*1000);
        var minute=Math.floor(dtime-day*24*60*60*1000-hour*60*60*1000);
        var seconds=Math.floor(dtime-day*24*60*60*1000-hour*60*60*1000-minute*60*1000);
        var stime="倒计时"+`${day}`+"天"+`${hour}`+"时"+`${minute}`+"分"+`${seconds}`+"秒";
        console.log(stime);
    }

    setInterval(dt(),1000);
    export default{
        data(){
             return{
                 stime:"",
                 showback:true,
                 checked:1
             }
        },
        methods:{
         
        }
    }
</script>
<style scoped>
    .active{
        padding-top:10px;
    }
    .huodong_in li>img{
        width:360px;
        height:153.59px;
        margin-left:7.5px;
    }
    .huodong_in li{
        background-color:#f0f0f0;
        position:relative;
        margin-bottom:7.5px;
        
    }
    .huodong_in li>p{
        text-align:center;
        font-size:12px;
        background-color:#f0f0f0;
        padding:7.5px;
    }
    .huodong_in li>div{
        background-color:#ffe32a;
        border-radius:5px;
        width:80px;height:22px;
        line-height:22px;
        position:absolute;
        top:0px;left:275px;
        font-size:16px;
    }
</style>