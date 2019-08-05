<template>
    <div class="select-city-box">
        <div class="city">
            <div class="content">
                <div class="city-icon">
                    <div class="info">
                        <i class="iconfont iconGroup-"></i>
                    </div>
                    <p>请选择您所在的城市</p>
                </div>
                <ul class="lists">
                    <li
                        v-for="(item, index) in list"
                        :key="index"
                        :class="{'on': item.code === select}"
                        :data-code="item.code"
                        @click="selectCity(item)"
                    >
                        <span>{{item.name}}</span>
                        <b>{{item.spell}}</b>
                        <i class="iconfont iconarrow-right-copy"></i>
                    </li>
                </ul>
                <div class="city_more">
                    <p>更多城市敬请期待</p>
                    <i class="iconfont icongengduo"></i>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: {
        citySelect: {
            type: Object
        }
    },
    data() {
        return {
            list: [
                { code: "001", name: "上海市", spell: "ShangHai" },
                { code: "002", name: "杭州市", spell: "HangZhou" },
                { code: "003", name: "苏州市", spell: "SuZhou" },
                { code: "004", name: "北京市", spell: "BeiJing" }
            ],
            select: this.citySelect.code || ""
        };
    },
    methods: {
        selectCity(data) {
            this.select = data.code;
            this.$emit("update:citySelect", {
                code: data.code,
                name: data.name,
                selected: true
            });
        }
    },
    mounted() {}
};
</script>
<style lang="scss" scoped>
.select-city-box {
    position: fixed;
    width: 100%;
    height: 100%;
    background: #d5e1eb;
    z-index: 2000;
    top: 60px;
    left: 0;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    overflow: scroll;
    -webkit-overflow-scrolling: touch;
    .city {
        background: #d5e1eb;
        height: 100%;
        .content {
            padding: 22.5px;
            overflow: hidden;
            -webkit-overflow-scrolling: touch;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            .city-icon {
                display: block;
                text-align: center;
                margin: 0 auto 10px;
                .info {
                    width: 105px;
                    height: 105px;
                    border-radius: 50%;
                    margin: 0 auto;
                    background: #fff;
                    i {
                        color: #d2dce8;
                        font-size: 52px;
                        line-height: 105px;
                    }
                }
                p {
                    color: #fff;
                    line-height: 37.5px;
                    margin-top: 15px;
                }
            }
            .lists {
                display: flex;
                flex-direction: column;
                li {
                    flex: 1;
                    display: flex;
                    background: #fff;
                    color: #423d3a;
                    text-align: center;
                    border-radius: 8px;
                    margin-top: 10px;
                    line-height: 60px;
                    &.on {
                        color: #423d3a;
                        background: -webkit-linear-gradient(
                            top,
                            #ffdb5d,
                            #ffcd21
                        );
                        i {
                            color: #fff;
                        }
                        b {
                            color: #423d3a;
                        }
                    }
                    span {
                        flex: 2.5;
                        display: block;
                        font-size: 20px;
                    }
                    b {
                        flex: 4;
                        display: block;
                        font-size: 15px;
                        font-weight: 400;
                        text-align: left;
                        color: #c6c6c6;
                    }
                    i {
                        color: #c6c6c6;
                        font-size: 20px;
                        padding-right: 16px;
                    }
                }
            }
            .city_more {
                margin-top: 15px;
                font-size: 9px;
                line-height: 37.5px;
                text-align: center;
                p {
                    text-align: center;
                }
                i {
                    font-size: 32px;
                    color: #fff;
                }
            }
        }
    }
}
</style>