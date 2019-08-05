<template>
<div class="homedetail">
    <!--主页-->
    <!--轮播图-->
    <banner></banner>
    <gotop></gotop>
    <!--商品部分-->
    <div class="par">
        <!--f1-->
        <div class="f1">
            <div class="f-top">
                <div class="f-top-top">
                    <div class="par-img">
                        <img :src="require('../../assets/jdz/HomeDetarl/icon_cj.png')" alt=""/>
                    </div>
                    <div class="par-title">
                        <p>本季推荐</p>
                        <p>Season's Recommend</p>
                    </div>
                    <div class="par-right">
                        <p>Season's</p>
                    </div>
                </div>
                <div class="f-top-middle">
                 <router-link :to="{path:'/detail',query:{ProductId:f1Big[0].cid}}"><img :src="`${url}${f1Big[0].img_one}`" alt=""/></router-link> 
                </div>
            </div>
            <div class="f-buttom">
                <ul>
                    <li v-for="(item,i) of f1" :key="i" >
                        <router-link tag="a" :to="{path:'/detail',query:{ProductId:item.cid}}">
                            <img :src="`${url}${item.img_one}`" alt=""/>

                            <div class="f-shop">
                                <div class="f-shop-title">
                                    <p>{{item.title}}</p>
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
        </div>
        <div class="f2">
            <div class="f-top">
                <div class="f-top-top">
                    <div class="par-img">
                        <img :src="require('../../assets/jdz/HomeDetarl/icon_cj.png')" alt=""/>
                    </div>
                    <div class="par-title">
                        <p>人气推荐</p>
                        <p>Popularity Recommend</p>
                    </div>
                    <div class="par-right">
                        <p>Popularity</p>
                    </div>
                </div>
                <div class="f-top-middle">
                    <router-link :to="{path:'/detail',query:{ProductId:f1Big[0].cid}}"><img :src="`${url}${f2Big[0].img_one}`" alt=""/></router-link>
                </div>
            </div>
            <div class="f-buttom">
                <ul>
                    <li v-for="(item,i) of f2" :key="i" >
                        <router-link tag="a" :to="{path:'/detail',query:{ProductId:item.cid}}">
                            <img :src="`${url}${item.img_one}`" alt=""/>

                            <div class="f-shop">
                                <div class="f-shop-title">
                                    <p>{{item.title}}</p>
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
        </div>
        <div class="f3">
            <div class="f-top">
                <div class="f-top-top">
                    <div class="par-img">
                        <img :src="require('../../assets/jdz/HomeDetarl/icon_cj.png')" alt=""/>
                    </div>
                    <div class="par-title">
                        <p>经典推荐</p>
                        <p>Classic Recommend</p>
                    </div>
                    <div class="par-right">
                        <p>Classic</p>
                    </div>
                </div>
                <div class="f-top-middle">
                    <router-link :to="{path:'/detail',query:{ProductId:f1Big[0].cid}}"><img :src="`${url}${f3Big[0].img_one}`" alt=""/></router-link>
                </div>
            </div>
            <div class="f-buttom">
                <ul>
                    <li v-for="(item,i) of f3" :key="i" >
                        <router-link tag="a" :to="{path:'/detail',query:{ProductId:item.cid}}">
                            <img :src="`${url}${item.img_one}`" alt=""/>

                            <div class="f-shop">
                                <div class="f-shop-title">
                                    <p>{{item.title}}</p>
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
        </div>
    </div>
    <!--银行专区-->
    <div class="bank-zone">
        <p>银行专区 Bank Zone</p>
        <div>
            <div>
                <router-link to="javascript:;">
                    <img :src="require('../../assets/jdz/HomeDetarl/60e02af5e2cd5668.jpg')" alt=""/>
                </router-link>
            </div>
            <div>
                <router-link to="javascript:;">
                    <img :src="require('../../assets/jdz/HomeDetarl/9402f8b9c48d678f.jpg')" alt=""/>
                </router-link>
            </div>
        </div>
    </div>
    <!--底部商标-->
    <div class="mcake">
        <div class="log">
            <img :src="require('../../assets/jdz/HomeDetarl/logo2.png')" alt=""/>
        </div>
        <div class="relation">
            <p><img :src="require('../../assets/jdz/HomeDetarl/wx_code.jpg')" alt=""/></p>
            <div>
                <span>
                    <router-link to="javascript:;">
                        <img :src="require('../../assets/jdz/HomeDetarl/weibo.png')" alt=""/>
                    </router-link>
                </span>
                <span>
                    <router-link to="javascript:;">
                        <img :src="require('../../assets/jdz/HomeDetarl/weixin.png')" alt=""/>
                    </router-link>
                </span>
            </div>
        </div>
        <p>Copyright © 2012-2019 上海卡法电子商务有限公司 版权所有 沪ICP备12022075号</p>
    </div>
</div>
</template>
<script>
    import banner from './Banner.vue'
    export default{
        components:{
            banner,
        },
        data(){
            return{
                f1:[],
                f1Big:[{img_one:"home/f4d22390f990ea96.jpg"}],
                f2:[],
                f2Big:[{img_one:"home/f4d22390f990ea96.jpg"}],
                f3:[],
                f3Big:[{img_one:"home/f4d22390f990ea96.jpg"}],
                url:"http://127.0.0.1:8080/img/",
            }
        },
        methods:{
            homes(){
                //发送ajax请求
                var url="lists/home"; //console.log(123)
                //请求数据
                this.axios.get(url).then(result=>{
                    var lists=result.data;
                    
                    for(var i=0;i<lists.length;i++){
                       if(lists[i].home_type==1 && !lists[i].subtitle=="")
                       {
                           this.f1.push(lists[i]);
                       }else if(lists[i].home_type==1 && lists[i].subtitle=="")
                       {
                           this.f1Big[0]=lists[i];
                       }else if(lists[i].home_type==2 && !lists[i].subtitle=="")
                       {
                           this.f2.push(lists[i]);
                       }else if(lists[i].home_type==2 && lists[i].subtitle=="")
                       {
                            this.f2Big[0]=lists[i];
                       }else if(lists[i].home_type==3 && !lists[i].subtitle=="")
                       {
                           this.f3.push(lists[i]);
                       }else if(lists[i].home_type==3 && lists[i].subtitle=="")
                       {
                               this.f3Big[0]=lists[i];
                           }
                    }
                    
                })
            }
        },
        created() {
            this.homes()
        },
    }
</script>
<style scoped>
*{
    box-sizing:border-box;
    overflow:hidden;

}
.homedetail{
    margin-bottom:49px;
}
.par,.bank-zone,.mcake{
    width: 375px;
}
/*f头部*/
.f-top{
    border-top:1px solid #ccc;
    margin-top:.16px;
}
.f-top-top{
    display: flex;
    justify-content: space-between;
    padding: 10px 8px;
}
.par-img>img{
    width: 57px;
}
.par-title>p:first-child{
    font-size: 7px;
    font-weight: 700;
}
.par-title>p:last-child{
    font-size: .18666666rem;
    color: #7f7f7f;
}
.par-right{
    font-size: .266666666rem;
    color: #b2b2b2;
    margin-top: 0.2rem;
}
/*F 中部大图*/
.f-top-middle>a>img{
    width: 100%;
}
/*F 底部商品*/
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
.bank-zone{
    padding: 6px;
}

.bank-zone>p{
    color: #151515;
    text-align: center;
    font-size: .3733333rem;
    padding: .3rem 0 .5rem;
    font-weight: 700;
}
.bank-zone>div>div:last-child{
    margin-top: .2rem;
}
.bank-zone>div img{
    width: 100%;
}
.mcake{
    text-align: center;
    background-color: #000;
    padding:2px;
    padding-bottom: .3rem;
}
.mcake>.log>img{
    width: 2.813333rem;
    margin: 1.6666666rem 0 .68rem;
}
.relation>p>img{
    width: 3rem;
    margin-bottom: .5rem;
}
.relation div>span{
    margin: 0 .1rem;
}
.relation a>img{
    width: 1rem;
}
.mcake>p{
    color: #9c9c9c;
    font-size: .2rem;
    margin-top: 1rem;
}
</style>
