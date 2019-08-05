<template>  
                                            <!--小食列表-->
    <div class="cookies">
     <top :showback="showback"></top>
     <gotop></gotop>
         <div class="f-buttom">
                <ul>
                    <li v-for="(item,i) of list" :key="i">
                        <router-link tag="a" :to="{path:'/detail',query:{ProductId:item.cid}}">
                            <img :src="`${url}${item.img_one}`"  alt=""/>

                            <div class="f-shop">
                                <div class="f-shop-title">
                                    <p>{{item.title}}<span>{{item.onsale}}</span></p>
                                    <p>{{item.subtitle}}</p>
                                </div>
                                <div class="f-gwc">
                                    <router-link to="javascript:;">
                                        <img :src="require('../../assets/jdz/HomeDetarl/gwc.png')" alt=""/>
                                    </router-link>
                                </div>
                            </div>
                            <p class="f-price">￥ {{item.price.toFixed(2)}}</p>
                        </router-link>
                    </li>
                </ul>
            </div>
        <foot :routeractive="routeractive" :checked="checked"></foot>
    </div>
</template>
<script>
    export default{
        data(){
            return{
                list:[],
                url:"http://127.0.0.1:8080/img/",
                showback:false,//显示地点名还是显示(false)/后退(true),
                routeractive:"xs",
                checked:10
            }
        },
        methods:{
            shopping(){
                var url = "lists/cake";
                var obj ={family_id:2};
                this.axios.get(url,{params:obj}).then(result=>{
                    this.list = result.data;
                })
            }
        },
        created() {
            this.shopping()
        },
    }
</script>
<style scoped>
.cookies{
    width:375px;
    margin-bottom:49px;
}
.f-buttom{
    padding: .2rem .12rem;
}
.f-buttom>ul{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}
.f-buttom>ul>li{
    width: 48.8%;
    overflow: hidden;
    margin: .05rem;
}
.f-buttom>ul>li>a>img{
    box-sizing: border-box;
    width: 100%;
}
.f-shop{
    padding-left:.1rem;
    display: flex;
    justify-content: space-between;
}
.f-shop .f-shop-title>p:first-child{
    font-size: .266666667rem;
    padding: .20833rem .13889rem .06944rem;
    line-height: .34722rem;
    font-weight: 700;
    color: #000;
}
.f-shop .f-shop-title>p>span{
    background-color: #ffe32a;
    font-size: .116666667rem;
    display: inline-block;
    line-height: .266666667rem;
    padding: .02rem 0rem 0;
    margin-top: .01rem;
    margin-left: .1rem;
    border-radius:5px;
}
.f-shop .f-shop-title>p:last-child{
    font-size: .186666667rem;
    font-weight: 400;
    color: #7f7f7f;
    padding-left: .13889rem;
}
.f-gwc{
    margin-top: .1rem;
    margin-right: .2rem;
}
.f-gwc img{
    width: 0.8rem;
}
.f-price{
    font-weight: 400;
    line-height: .3rem;
    font-size: .208rem;
    color:#000;
    padding-top: .1rem;
    padding-left: .2rem;
}
</style>
