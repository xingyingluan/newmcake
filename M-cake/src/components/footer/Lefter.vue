<template>
    <div class="left-layer" style="z-index: 2005;">
        <router-link to="cake" data-idx="0">
            <div class="total-cake">
                <span class="txt" :class="{'checked':checked==0}">所有蛋糕</span>
                <span class="num">35</span>
            </div>
        </router-link>
        <div class="content">
            <router-link :to="{path:'/lists',query:{lname:'拿破仑'}}">
                <div class="per"  data-idx="1" @click="check">
                    <span class="icon-left iconfont icontubiao-shangchuan-"></span>
                    <span class="txt" :class="{'checked':checked==1}">拿破仑</span>
                    <span class="right-btn iconfont iconarrow-right-copy"></span>
                </div>
            </router-link>
            <router-link  :to="{path:'/lists',query:{lname:'鲜奶'}}" data-idx="2">
                <div class="per">
                    <span class="icon-left iconfont iconxiannai"></span>
                    <span class="txt" :class="{'checked':checked==2}">鲜奶</span>
                    <span class="right-btn iconfont iconarrow-right-copy"></span>
                </div>
            </router-link>
            <router-link  :to="{path:'/lists',query:{lname:'慕斯'}}" data-idx="3">
                <div class="per">
                    <span class="icon-left iconfont iconicon-test1"></span>
                    <span class="txt" :class="{'checked':checked==3}">慕斯</span>
                    <span class="right-btn iconfont iconarrow-right-copy"></span>
                </div>
            </router-link>
            <router-link  :to="{path:'/lists',query:{lname:'芝士'}}" data-idx="4">
                <div class="per">
                    <span class="icon-left iconfont icondangao"></span>
                    <span class="txt" :class="{'checked':checked==4}">芝士</span>
                    <span class="right-btn iconfont iconarrow-right-copy"></span>
                </div>
            </router-link>
            <router-link  :to="{path:'/lists',query:{lname:'巧克力'}}" data-idx="5">
                <div class="per">
                    <span class="icon-left iconfont iconDesert-"></span>
                    <span class="txt" :class="{'checked':checked==5}">巧克力</span>
                    <span class="right-btn iconfont iconarrow-right-copy"></span>
                </div>
             </router-link>
             <router-link  :to="{path:'/lists',query:{lname:'咖啡'}}" data-idx="6">
                <div class="per">
                    <span class="icon-left iconfont iconCOFFEBEANS"></span>
                    <span class="txt" :class="{'checked':checked==6}">咖啡</span>
                    <span class="right-btn iconfont iconarrow-right-copy"></span>
                </div>
            </router-link>
            <router-link  :to="{path:'/lists',query:{lname:'坚果'}}" data-idx="7">
                <div class="per">
                    <span class="icon-left iconfont iconjianguo1"></span>
                    <span class="txt" :class="{'checked':checked==7}">坚果</span>
                    <span class="right-btn iconfont iconarrow-right-copy"></span>
                </div>
            </router-link>
            <router-link  :to="{path:'/lists',query:{lname:'水果'}}" data-idx="8">
                <div class="per">
                    <span class="icon-left iconfont iconshuiguo"></span>
                    <span class="txt" :class="{'checked':checked==8}">水果</span>
                    <span class="right-btn iconfont iconarrow-right-copy"></span>
                </div>
            </router-link>
            <router-link  :to="{path:'/lists',query:{lname:'冰淇淋'}}" data-idx="9">
                <div class="per">
                    <span class="icon-left iconfont iconziyuan"></span>
                    <span class="txt" :class="{'checked':checked==9}">冰淇淋</span>
                    <span class="right-btn iconfont iconarrow-right-copy"></span>
                </div>
            </router-link>
        </div>
        <router-link  :to="{path:'/cookies'}" data-idx="10">
            <div class="total-snack">
                <span class="txt" :class="{'checked':checked==10}">所有小食</span>
                <span class="num">18</span>
            </div>
        </router-link>
        <router-link  :to="{path:'/lists',query:{lname:'所有配件'}}" data-idx="11">
            <div class="total-other">
                <span class="txt" :class="{'checked':checked==11}">所有配件</span>
                <span class="num">12</span>
            </div>
        </router-link>
    </div>
</template>
<script>
export default {
    inject:["reload"],
    props:{
        checked:0
    },
    data() {
        return {
        };
    },
    methods: {
        check(e){
            //this.checked=e.currentTarget.dataset.idx;
        }
    },
    mounted() {},
    watch:{
        $route(to,from){
            if(this.$route.path=="/lists"){
                this.reload();
            };
        }
    }
};
</script>
<style lang="scss" scoped>
.left-layer {
    position: fixed;
    width: 50%;
    height: 100%;
    left: 0;
    top: 0;
    bottom: 0;
    background: #ffffff;
    .total-cake {
        padding-top: 52px;
        padding-left: 15px;
        height: 40px;
        border-bottom: 1px solid #ddd;
        .txt {
            color: #000000;
            font-size: 12px;
        }
        .num {
            border-radius: 100%;
            min-width: 18px;
            height: 18px;
            line-height: 18px;
            margin-left: 3.75px;
            background: #ffe32a;
            text-align: center;
            display: inline-block;
        }
    }
    .content {
        padding-left: 15px;
        .per {
            color: #000000;
            font-size: 14px;
            height: 40px;
            line-height: 40px;
            .icon-left {
                display: inline-block;
                font-size: 24px;
                float: left;
            }
            .txt {
                float: left;
                display: inline-block;
                padding-left: 16px;
                height: 40px;
                line-height: 40px;
            }
            .right-btn {
                display: inline-block;
                float: right;
                font-size: 16px;
                padding-right: 12px;
            }
        }
    }
    .total-snack,
    .total-other {
        padding-top: 20px;
        padding-left: 20px;
        height: 40px;
        border-bottom: 1px solid #ddd;
        .txt {
            color: #000000;
            font-size: 12px;
        }
        .num {
            border-radius: 100%;
            min-width: 18px;
            height: 18px;
            line-height: 18px;
            margin-left: 3.75px;
            background: #ffe32a;
            text-align: center;
            display: inline-block;
        }
    }
}
.checked{
    font-weight:bold;
}
</style>