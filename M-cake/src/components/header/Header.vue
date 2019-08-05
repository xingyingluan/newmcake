<template>
    <div>
        <div id="vue-header">
            <div class="vue-header">
                <div class="navTab">
                    <ul class="nav">
                        <li @click="showCity" class="iconfont icondingwei" v-if="showback==false">
                            <span>{{citySelect.name}}</span>
                        </li>
                        <li class="back" v-if="showback==true" @click="goback">
                            <span></span>
                        </li>
                        <li class="center">
                            <div class="logo" @click="gotohome">
                                <img src="../../assets/gzy/logo.png" />
                            </div>
                        </li>
                        <template v-if="!showCityModal">
                            <template v-if="!showSearchModal">
                                <li @click="showSearch(true)" class="iconfont iconiconset0157"></li>
                            </template>
                            <template v-else>
                                <li @click="showSearch(false)" class="icon-calcel">取消</li>
                            </template>
                            <li class="sp"></li>
                            <li
                                click="showSearch(false)"
                                v-on:click="showAbout"
                                class="iconfont iconhtmal5icon35"
                            ></li>
                        </template>
                        <template v-else>
                            <li class="placeholder"></li>
                        </template>
                    </ul>
                </div>
            </div>
        </div>
        <template v-if="showSearchModal">
            <search></search>
        </template>
        <template v-if="showAboutModal">
            <about v-bind:modalShow.sync="showAboutModal" :checked="checked"></about>
        </template>
        <template v-if="showCityModal">
            <city v-bind:citySelect.sync="citySelect"></city>
        </template>
    </div>
</template>
<script>
import Search from "./Search.vue";
import About from "./About.vue";
import City from "./City.vue";

export default {
    components: {
        Search,
        About,
        City
    },
    props: {
        showback:"",
        checked:0
        },
    data() {
        return {
            showSearchModal: false,
            showAboutModal: false,
            showCityModal: false,
            citySelect: {
                code: "004",
                name: "北京市"
            },
           //showback:false,//回退显示
        };
    },
    methods: {
        showSearch(data) {
            this.showSearchModal = data;
        },
        showAbout() {
            this.showSearchModal = false;
            this.showAboutModal = !this.showAboutModal;
        },
        showCity() {
            this.showCityModal = true;
        },
        goback(){
            this.$router.go(-1);
            //this.showback=false;
        },
        gotohome(){
            this.$router.push("home");
        }
    },
    watch: {
        "citySelect.selected": {
            handler(newVal, oldVal) {
                if (newVal) {
                    this.showCityModal = false;
                    this.citySelect.selected = false;
                }
            },
            immediate: true
        }
    },
    createrd() {
        
    }
};
</script>
<style lang="scss" scoped>
#vue-header {
    width: 100%;
    height: 60px;
    .vue-header {
        position: fixed;
        width: 100%;
        height: 60px;
        left: 0;
        right: 0;
        top: 0;
        z-index: 100;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.1);
        box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.1);
        .navTab {
            height: 60px;
            .nav {
                display: flex;
                flex-direction: row;
                z-index: 10;
                position: relative;
                background-color: #fff;
                li {
                    position: relative;
                    line-height: 60px;
                    color: #c6c6c6;
                    & {
                        &.iconfont {
                            color: #c6c6c6;
                        }
                        &.iconiconset0157 {
                            font-size: 18px;
                            text-align: center;
                            -webkit-box-flex: 1.5 !important;
                            -ms-flex: 1.5 !important;
                            flex: 1.5 !important;
                        }
                        &.icon-calcel {
                            font-size: 14px;
                            text-align: center;
                            -webkit-box-flex: 1.5 !important;
                            -ms-flex: 1.5 !important;
                            flex: 1.5 !important;
                        }
                        &.iconhtmal5icon35 {
                            font-size: 22px;
                            -webkit-box-flex: 1.5 !important;
                            -ms-flex: 1.5 !important;
                            flex: 1.5 !important;
                            margin-top: -0.375px;
                        }
                        &.icondingwei {
                            font-size: 15px;
                            padding-left: 14px;
                            -webkit-box-flex: 3 !important;
                            -ms-flex: 3 !important;
                            flex: 3 !important;
                        }
                        &.center {
                            flex: 6;
                        }
                        &.back{
                            width:80px;
                            margin-left:20px;
                            span{
                                display:inline-block;
                                height:10px;
                                width:10px;
                                border-top:1px solid #ddd;
                                border-left:1px solid #ddd;
                                transform:rotate(-45deg);
                            }
                        }
                        &.sp {
                            flex: 0;
                            margin-right: 10px;
                            height: 12px;
                            margin-top: 24px;
                            border-right: 1px solid #b1b1b1;
                        }
                        &.placeholder {
                            flex: 3;
                        }
                    }
                    span {
                        color: #8d8d8d;
                        display: inline-block;
                        margin-left: 3.75px;
                    }
                    .logo {
                        width: 88px;
                        margin: 0 auto;
                    }
                }
            }
            .bgCover {
                opacity: 0.5;
                background-color: #000;
                left: 0;
                top: 0;
                right: 0;
                margin: 0;
                width: 100%;
                position: fixed;
                left: 50%;
                margin-left: -187px;
                opacity: 0;
                width: 375px;
                height: 100%;
                background: #f9f9f9;
                z-index: 1;
            }
        }
    }
}
</style>