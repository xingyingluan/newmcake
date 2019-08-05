<template>
    <div>
        <div class="footer">
            <ul>
                <li @click="leftModal(true)">
                    <span>精选</span>
                </li>
                <span class="sp"></span>
                <li  @click="gotocake">
                    <span :class="{'router-active':routeractive=='dg'}">蛋糕</span>
                </li>
                <span class="sp"></span>
                <li>
                    <span class @click="gotocookies" :class="{'router-active':routeractive=='xs'}">小食</span>
                </li>
                <span class="sp"></span>
                <li @click="gotoCart">
                    <span class>购物车</span>
                </li>
            </ul>
        </div>
        <template v-if="leftModalShow">
            <left :checked="checked"></left>
            <div class="v-modal" @click="leftModal(false)" style="z-index: 1996;"></div>
        </template>
    </div>
</template>
<script>
import Left from "./Lefter.vue";
export default {
    components: {
        Left
    },
    props:{
        routeractive:"",
        checked:0
    },
    data() {
        return {
            leftModalShow: false,
        };
    },
    methods: {
        leftModal(data) {
            this.leftModalShow = data;
        },
        //跳转到购物车界面
        gotoCart(){
            this.$router.push("cart");
        },
        //跳转到蛋糕页
        gotocake(){
            this.$router.push("cake");
        },
        //跳转到小食页
        gotocookies(){
            this.$router.push("cookies");
        }
    },
    created() {
        
    }
};
</script>
<style lang="scss" scoped>
.footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 48px;
    line-height: 48px;
    background: #fff;
    z-index: 100;
    box-sizing: border-box;
    box-shadow: 0 -1px 2px 0 rgba(0, 0, 0, 0.1);
    ul {
        display: flex;
        flex-direction: row;
        li {
            flex: 1;
            position: relative;
            color: #000;
            font-size: 15px;
            text-align: center;
            span {
                position: relative;
                margin-right: 5px;
                line-height: 50px;
                font-size: 15px;
            }
            .router-active {
                font-weight: 700;
            }
        }
        .sp {
            position: relative;
            flex: 0;
            height: 12px;
            margin-top: 19px;
            border-right: 1px solid #b1b1b1;
        }
    }
}
</style>