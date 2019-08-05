<template>
     <!--精选中商品列表-->
    <div>
        <top :showback="showback"></top>
        <gotop></gotop>
        <div class="non" v-if="none">
            <div>抱歉，没有找到商品额～</div>
        </div>
        <div v-if="block">
            <div class="f-buttom">
                    <ul>
                        <li v-for="(item,i) of list" :key="i" >
                            <router-link to="javascript:;">
                                <img :src="`${url}${item.img_one}`" alt=""/>
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
        </div>
        <foot :checked="checked"></foot>
    </div>
</template>

<script>
    export default{
        inject:["reload"],
        data(){
            return{
                list:[],
                url:"http://127.0.0.1:8080/img/",
                lname:"拿破仑",
                none:false,
                block:true,
                showback:true, //显示地点名还是显示(false)/后退(true)
                checked:-1,
            }
        },
        methods:{
            lis(){
                var url = "lists/sift";
                var obj = {lname:this.lname};
                console.log(obj);
                /*
                if(obj.lname==1){
                    this.none = true;
                    this.block = false;
                }else{
                    this.none = false;
                    this.block = true;
                    this.axios.get(url,{params:obj}).then(result=>{
                        this.list = result.data;
                    })
                }*/
                this.axios.get(url,{params:obj}).then(result=>{
                        this.list = result.data;
                        console.log(this.list)
                })
                if(this.list.length==0){
                    this.none = false;
                    this.block = true;
                }else{
                    this.none = true;
                    this.block = false;
                }
            }
        },
        created() {
            this.lname = this.$route.query.lname;
            this.lis();
            switch(this.lname){
                case "拿破仑":
                this.checked=1;
                return;
                case "鲜奶":
                this.checked=2;
                return;
                case "慕斯":
                this.checked=3;
                return;
                case "芝士":
                this.checked=4;
                return;
                case "巧克力":
                this.checked=5;
                return;
                case "咖啡":
                this.checked=6;
                return;
                case "坚果":
                this.checked=7;
                return;
                case "水果":
                this.checked=8;
                return;
                case "冰淇淋":
                this.checked=9;
                return;
                case "所有配件":
                this.checked=11;
                return;
            }
        },
    }
</script>
<style scoped>
.non{
    text-align:center;
    margin:auto;
    width: 100%;
    height: 547px;
    padding-top: 60px;
    background-color: #f9f9f9;
    font-size:16px;
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
    font-size: .186666667rem;
    display: inline-block;
    line-height: .266666667rem;
    padding: .02rem 0rem 0;
    margin-top: .01rem;
    margin-left: .1rem;
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