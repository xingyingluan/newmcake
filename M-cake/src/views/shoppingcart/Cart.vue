<template>
    <!--购物车组件-->
    <div class="cart">
        <top :showback="showback"></top>
        <div class="bottom">
            <!--1.满购100元提示-->
            <div class="coupon">
                <p>
                    <span class="present">赠券</span>
                    <span>已购满¥100，订单完成可获赠优惠券</span>
                </p>
                <p class="join">
                    <span>已参加</span>
                    <span class="moreright"></span>
                </p>
            </div>
            <!--2.购物车商品-->
            <div class="product" v-for="(item,i) of nowSizes" :key="i">
                <!--换购信息提示-->
                <mt-cell-swipe title="" :right="[
                    {
                      content: '删除',
                      style: { background: 'red', color: '#fff'},
                      handler: () => deleteSection(item.iid)
                    }
                  ]">
                    <div class="trade">
                        <p>
                            <span class="tradeicon">换购</span>
                            <span>已满足换购条件,可换购商品</span>
                        </p>
                        <p class="join">
                            <span>去换购</span>
                            <span class="moreright"></span>
                        </p>
                    </div>
                    <!--商品列表-->
                    <div class="productlist">
                        <div class="detail">
                            <div @click="check" :data-checkid="i">
                                <div class="checkbox" :class="{'checked':item.check}">
                                    <span></span>
                                </div>
                                <div class="img">
                                    <img :src="`${imgUrl}${item.imgurl}`" />
                                </div>
                                <div class="text">
                                    <span v-text="item.title"></span>
                                    <span class="eng" v-text="item.subtitle"></span>
                                    <!--<span v-text="`¥${parseInt(item.price).toFixed(2)}`"></span>-->
                                    <span v-text="`¥${item.size==pointSizes1[0]?parseInt(item.price).toFixed(2):(item.size==pointSizes1[1])?parseInt(item.price*1.5).toFixed(2):parseInt(item.price*2.3).toFixed(2)}`"></span>
                                </div>
                            </div>
                            <div>
                                <div class="bigsize">
                                    <div class="edit">
                                        <span @click="show" :data-proid="i">
                                            <i class="iconfont iconbianji"></i>
                                        </span>
                                    </div>
                                    <div class="size">
                                        <span v-text="`${item.size}×${item.count}`"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="declare">
                            <div>
                                <span class="bp">标配</span>
                                <span>10份标准餐具</span>
                            </div>
                            <div class="sales">
                                <div>
                                    <span class="cx">促销</span>
                                    <span>不使用活动优惠</span>
                                </div>
                                <div class="edit">修改优惠</div>
                            </div>
                        </div>
                    </div>

                </mt-cell-swipe>
            </div>
            <!--3.加购配件-->
            <div class="accessories">
                <div>
                    <div class="text">加购配件</div>
                    <ul>
                        <li>
                            <img class="imglist" src="../../assets/chu/1.jpg" />
                            <div>
                                <div>
                                    <span>数字蜡烛</span>
                                    <span>¥3.00</span>
                                </div>
                                <div class="carticon">
                                    <span>
                                        <i class="iconfont icongouwuche12"></i>
                                    </span>

                                </div>
                            </div>
                        </li>
                        <li>
                            <img class="imglist" src="../../assets/chu/1(1).jpg" />
                            <div>
                                <div>
                                    <span>生日牌</span>
                                    <span>¥5.00</span>
                                </div>
                                <div class="carticon">
                                    <span>
                                        <i class="iconfont icongouwuche12"></i>
                                    </span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <img class="imglist" src="../../assets/chu/1(2).jpg" />
                            <div>
                                <div>
                                    <span>缤纷欢乐礼包</span>
                                    <span>¥29.00</span>
                                </div>
                                <div class="carticon">
                                    <span>
                                        <i class="iconfont icongouwuche12"></i>
                                    </span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--修改商品数量规格页面-->
        <div class="top" v-show="isshow">
            <transition name="slide">
                <div v-show="isshow" class="content slide">
                    <div class="content-top">
                        <div class="top1">
                            <div class="img">
                                <img src="../../assets/chu/middle_2027_1.jpg" />
                            </div>
                            <div class="text">
                                <span>Mojito 柠·漾</span>
                                <span class="eng">Le Mojito</span>
                                <span>¥298</span>
                            </div>
                            <div class="close">
                                <span @click="nowclose">×</span>
                            </div>
                        </div>
                        <div class="top2" @click="showSpec">
                            <div>
                                <span>规格选择</span>
                            </div>
                            <div>
                                <span>{{pointSizes[active]}}</span>
                                <span class="more"></span>
                            </div>
                        </div>
                        <div class="top3">
                            <div>
                                <span>数量选择</span>
                            </div>
                            <div class="count">
                                <span @click="countReduce" class="reduce" :class="{'bg-yellow':count>1}">-</span>
                                <input type="number" v-model="count" maxlength="3" readonly>
                                <span @click="countAdd" class="add bg-yellow">+</span>
                            </div>
                        </div>
                    </div>
                    <!--取消/确认按钮-->
                    <div class="top4">
                        <div class="cansel" @click="nowclose">取消</div>
                        <div class="confirm" @click="confirm">确认</div>
                    </div>
                </div>
            </transition>
        </div>
        <div class="last" v-show="isshow2">
            <div class="out">
                <transition name="people">
                    <div class="size people" v-show="isshow2">
                        <div v-for="(item,i) of pointSizes" :key="i" @click="checkActive" :data-idx="i">
                            <span>{{item}}</span>
                            <span class="active" v-show="active==i"></span>
                        </div>
                    </div>
                </transition>
            </div>
        </div>
        <!-- 底部结算-->
        <div class="accounts">
            <div class="checkbox" :class="{checked1}" @click="checkAll">
                <span></span>
                <div>全选</div>
            </div>
            <div class="total">
                <span>合计：</span>
                <span v-text="`¥${priceAll.toFixed(2)}`"></span>
            </div>
            <div class="totalcount">
                <span>去结算(4)</span>
            </div>
        </div>
    </div>
</template> 

<script>
export default {
  components: {},
  data() {
    return {
      checked: true, //该商品是否选中 true选中 false 未选中
      checked1: true,
      isshow: false, //修改商品数量界面是否显示
      //isshowbox: false, //修改商品数量界面内容是否显示
      count: 1, //商品的数量
      count1: 1,
      isshow2: false, //选择磅值页面是否显示
      active: 0,
      pointSize: "1磅-2-3人食",
      pointSizes: ["1磅-2-3人食", "2磅-4-7人食", "3磅-8-12人食"],
      pointSize1: "1磅（454g）",
      pointSizes1: ["1磅（454g）", "2磅（908g）", "3磅（1.36kg）"],
      productlists: [], //购物车商品列表
      imgUrl: "http://127.0.0.1:8080/img/details/",
      showback: true, //页面显示城市选择/回退
      nowSizes: [], //保存不同商品当前的大小磅值和数量
      proid: 0, //当前要修改的选中商品的下标
      priceAll: 0 //总计    选中状态 数量
    };
  },
  methods: {
    //删除购物车商品
    deleteSection(iid) {
      console.log(iid);
      this.axios.get("user/deleteCart", { params: { iid } }).then(res => {
        console.log(res.data);
        if (res.data.code == 1) {
          //this.getCartlist()
          let nowList = this.nowSizes;
          for (var i = 0; i < nowList.length; i++) {
            if (iid == nowList[i].iid) {
              nowList.splice(i, 1);
            }
          }
          this.nowSizes = nowList;
          console.log(this.nowSizes);
          this.priceCount();
        }
      });
    },
    //商品选中状态变换
    check(e) {
      let checkid = parseInt(e.currentTarget.dataset.checkid);
      //给数组中的每个值赋值
      this.$set(this.nowSizes[checkid], "check", !this.nowSizes[checkid].check);
      //判断所有商品是否都选中
      this.checked1 = true;
      for (var i = 0; i < this.nowSizes.length; i++) {
        if (this.nowSizes[i].check == false) {
          this.checked1 = false;
        }
      }
      this.priceCount();
    },
    //修改商品信息显示
    show(e) {
      this.isshow = true;
      this.checked = true;
      //this.isshowbox = true;
      this.proid = parseInt(e.currentTarget.dataset.proid);
      //console.log(this.nowSizes[this.proid].size);
      //规格选择时，默认选择的当前商品的规格
      for (var i = 0; i < this.pointSizes1.length; i++) {
        if (this.pointSizes1[i] == this.nowSizes[this.proid].size) {
          this.active = i;
        }
      }
      console.log(this.active);
      //this.pointSizes[this.active]=this.nowSizes[this.proid].size;
      //选择规格时，当前选中的数量
      this.count = this.nowSizes[this.proid].count;
      //console.log(this.proid);
    },
    //修改商品信息的
    nowclose() {
      //this.isshowbox = false;
      //setTimeout(() => {
      this.isshow = false;
      // }, 1000);
    },
    //商品的数量加1
    countAdd() {
      this.count = parseInt(this.count) + 1;
    },
    //商品数量减1
    countReduce() {
      if (this.count > 1) {
        this.count = parseInt(this.count) - 1;
      }
    },
    //显示规格选择页面
    showSpec() {
      this.isshow2 = true;
    }, //规格选择
    checkActive(e) {
      var id = e.currentTarget.dataset.idx;
      //console.log(id);
      this.active = id;
      this.isshow2 = false;
    },
    confirm() {
      //规格选择，确定后赋值
      this.pointSize1 = this.pointSizes1[this.active];
      this.count1 = this.count;
      //当前选中商品的大小和数量
      this.nowSizes[this.proid].size = this.pointSize1;
      this.nowSizes[this.proid].count = this.count1;
      this.isshow = false;
      this.priceCount();
      // var nowPrice=nowSizes[this.proid].size==pointSizes1[0]?parseInt(item.price).toFixed(2):(nowSizes[this.proid].size==pointSizes1[1])?parseInt(item.price*1.5).toFixed(2):parseInt(item.price*2.3).toFixed(2);
      // console.log(nowPrice);
    },
    getCartlist() {
      //获取当前登录的用户ID
      var userid = 1;
      //访问服务器，获取数据
      this.axios
        .get("user/getCartList", { params: { user_id: userid } })
        .then(result => {
          this.productlists = result.data;
          //console.log(this.productlists);
          //初始化当前商品的尺寸，数量，是否选中，单价，iid
          for (var i = 0; i < this.productlists.length; i++) {
            let item = this.productlists[i];
            item.size = "1磅（454g）";
            item.count = 1;
            item.check = true;
            this.nowSizes.push(item);
            // this.nowSizes.push({
            //   size: "1磅（454g）",
            //   count: 1,
            //   check: true,
            //   price: this.productlists[i].price,
            //   iid: this.productlists[i].iid,

            // });
            //总价计算
            this.priceAll = parseInt(
              this.priceAll + this.productlists[i].price
            );
          }
        });
    },
    checkAll() {
      //全选按钮
      this.checked1 = !this.checked1;
      for (var i = 0; i < this.nowSizes.length; i++) {
        this.$set(this.nowSizes[i], "check", this.checked1);
      }
      this.priceCount();
    }, //价格计算
    priceCount() {
      this.priceAll = 0;
      for (var i = 0; i < this.nowSizes.length; i++) {
        if (this.nowSizes[i].check == true) {
          if (this.nowSizes[i].size == this.pointSizes1[0]) {
            this.priceAll = parseInt(
              this.priceAll + this.nowSizes[i].price * this.nowSizes[i].count
            );
          } else if (this.nowSizes[i].size == this.pointSizes1[1]) {
            this.priceAll = parseInt(
              this.priceAll +
                this.nowSizes[i].price * 1.5 * this.nowSizes[i].count
            );
          } else if (this.nowSizes[i].size == this.pointSizes1[2]) {
            this.priceAll = parseInt(
              this.priceAll +
                this.nowSizes[i].price * 2.3 * this.nowSizes[i].count
            );
          }
        }
      }
    }
  },
  created() {
    console.log()
    if (!sessionStorage.getItem("USER")) {
      //this.$toast("请先登录");
      this.$router.push("/login");
      this.$messagebox
        .confirm("您需要先登录才能继续您的操作","温馨提示")
        .then(action => {
          this.$router.push("/login");
          //this.$router.go(-2);
        })
        .catch(cancle => {
          this.$router.go(-2);
        });
    }else{
       this.getCartlist();
    }
   
  },
  mounted() {
    this.priceCount();
  }
};
</script>

<style scoped>
.span {
  display: inline-block;
  position: relative;
}

.moreright {
  margin-left: 5px;
  display: inline-block;
  width: 7px;
  height: 7px;
  border-right: 2px solid #ddd;
  border-bottom: 2px solid #ddd;
  transform: rotate(-45deg);
}
.cart {
  margin-top: 10px;
  padding: 5px;
  font-size: 12px;
}
.cart .bottom {
  position: relative;
  z-index: 0;
}
/* 底部结算 */
.cart .accounts {
  position: fixed;
  bottom: 0;
  left: 0;
  height: 49px;
  width: 375px;
  background: #fff;
  display: flex;
  align-items: center;
  padding-left: 10px;
  justify-content: space-between;
  box-sizing: border-box;
}
.cart .accounts .checkbox {
  display: flex;
  font-size: 14px;
  align-items: center;
}
.cart .accounts .checkbox span {
  margin-right: 5px;
}
.cart .accounts .total {
  margin-right: 100px;
  font-size: 14px;
}
.cart .accounts .total span:first-child {
  margin-right: 5px;
}
.cart .accounts .totalcount {
  font-size: 15px;
  background-color: #ffc107;
  height: 100%;
  box-sizing: border-box;
  padding-left: 15px;
  padding-right: 15px;
}
.cart .accounts .totalcount span {
  display: inline-block;
  line-height: 49px;
  height: 49px;
}

/* 配件选购*/
.cart .accessories {
  padding: 10px;
  margin-bottom: 49px;
}
.cart .accessories ul {
  display: flex;
}
.cart .accessories ul li {
  width: 100px;
  display: flex;
  flex-direction: column;
}
.cart .accessories ul li + li {
  margin-left: 10px;
}
.cart .accessories ul li .carticon span {
  display: inline-block;
  width: 20px;
  height: 20px;
  line-height: 20px;
  text-align: center;
  background: #ffc107;
  border-radius: 50%;
  font-size: 20px;
  padding: 1px;
}
.cart .accessories ul li .carticon span i {
  font-size: 15px;
}
.cart .accessories ul li > div {
  display: flex;
  justify-content: space-between;
}
.cart .accessories ul li > div > div {
  display: flex;
  flex-direction: column;
}
.cart .accessories .text {
  font-size: 16px;
  font-weight: bold;
}
.cart .accessories .imglist {
  width: 100px;
  height: 100px;
  margin-bottom: 10px;
}

/*磅值选择页面*/
.cart .last {
  position: fixed;
  z-index: 2;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.2);
  top: 0;
  left: 0;
}
.cart .last .out {
  position: relative;
  width: 100%;
  height: 100%;
}
.cart .last .size {
  width: 85%;
  background: #fff;
  margin: 0 auto;
  position: absolute;
  left: 7.5%;
  border-radius: 10px;
  box-sizing: border-box;
  font-size: 16px;
}
.cart .last .size > div {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.cart .last .size > div {
  height: 40px;
  padding: 5px 20px;
  line-height: 40px;
}
.cart .last .size > div + div {
  border-top: 0.5px solid #ddd;
}
.people {
  bottom: 49px;
}
.people-enter-active,
.people-leave-active {
  transition: all 1s ease;
}

.people-enter {
  bottom: 0;
}
.people-enter-to {
  bottom: 49px;
}
.people-leave {
  bottom: 49px;
}
.people-leave-to {
  bottom: 0;
}
.active {
  display: inline-block;
  width: 15px;
  height: 10px;
  border-left: 1px solid #ffc107;
  border-bottom: 1px solid #ffc107;
  transform: rotate(-45deg);
}
/*编辑商品时过渡效果--开始*/
.slide {
  width: 90%;
  transform: translateY(50%);
}
.slide-enter-active,
.slide-leave-active {
  transition: all 1s ease;
}
.slide-enter {
  transform: translateY(0);
}
.slide-enter-to {
  transform: translateY(50%);
}

.slide-leave {
  transform: translateY(50%);
}
.slide-leave-to {
  transform: translateY(0px);
}
/*编辑商品时过渡效果--结束*/
.cart .top {
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.2);
  width: 100%;
  height: 100%;
}
.cart .top .content {
  width: 85%;
  background: #fff;
  margin: 0 auto;
  border-radius: 10px;
  padding-bottom: 0px;
  position: relative;
}
.cart .top .content .content-top {
  padding: 10px;
  padding-bottom: 0px;
}

.cart .top .content .top1 {
  display: flex;
  align-items: top;
}
/*右上角的×号*/
.cart .top .content .close {
  position: absolute;
  right: 10px;
  font-size: 24px;
  top: 5px;
  color: #666;
}
.cart .top .content .text {
  margin-top: 0 !important;
}
/* 规格选择样式 top2*/
.cart .top .content .top2 {
  display: flex;
  justify-content: space-between;
  padding: 15px 5px;
  border-top: 0.5px solid #ddd;
  margin-top: 10px;
  color: #666;
}
.cart .top .content .top2 .more {
  display: inline-block;
  height: 10px;
  width: 10px;
  border-right: 2px solid #ddd;
  border-bottom: 2px solid #ddd;
  transform: rotate(45deg);
  margin-left: 10px;
}
/*数量选择样式 top3*/
.cart .top .content .top3 {
  display: flex;
  justify-content: space-between;
  padding: 15px 5px;
  border-top: 0.5px solid #ddd;
  color: #666;
}
.cart .top .content .top3 .count {
  display: flex;
}
.cart .top .content .top3 .count input {
  width: 50px;
  text-align: center;
  border: none;
  outline: none;
}
.cart .top .content .top3 .count .add,
.cart .top .content .top3 .count .reduce {
  display: inline-block;
  height: 20px;
  width: 20px;
  background: #ddd;
  border-radius: 50%;
  line-height: 20px;
  text-align: center;
  font-size: 24px;
}
.cart .top .content .top3 .count .bg-yellow {
  background-color: #ffc107;
}
/*取消，确认 top4 */
.cart .top .content .top4 {
  display: flex;
  height: 40px;
  font-size: 18px;
}
.cart .top .content .top4 .cansel,
.cart .top .content .top4 .confirm {
  width: 50%;
  background: #666;
  height: 40px;
  border-radius: 0px 0px 0px 10px;
  text-align: center;
  line-height: 40px;
  color: #fff;
}
.cart .top .content .top4 .confirm {
  background: #ffc107;
  border-radius: 0px 0px 10px 0px;
  color: #000;
}
/*顶部赠券提示样式 */
.cart .coupon {
  display: flex;
  justify-content: space-between;
  color: #666;
  padding-bottom: 30px;
  border-bottom: 0.5px solid #ddd;
  padding-left: 10px;
  padding-right: 10px;
}
.cart .coupon .join,
.cart .product .join {
  font-weight: bold;
  display: flex;
  align-items: center;
}
.cart .coupon .join span:first-child,
.cart .product .join span:first-child {
  color: #ff0000;
}
.cart .coupon .present,
.cart .product .trade .tradeicon {
  height: 20px;
  padding: 2px 10px;
  line-height: 20px;
  background-color: #ff0000;
  border-radius: 10px;
  color: #fff;
  margin-right: 5px;
}
/*购物车商品列表样式*/
.cart .product {
  padding: 15px;
  padding-bottom: 20px;
}
.cart .product .trade {
  width: 100%;
  display: flex;
  justify-content: space-between;
  color: #000;
  margin-bottom: 10px;
}
.cart .product .productlist {
  width: 100%;
  margin-top: 10px;
  /* border-bottom: 0.5px solid #ddd;*/
  padding-bottom: 10px;
}
.cart .product .productlist .detail .checkbox {
  width: 20px;
}
.cart .product .productlist .detail {
  height: 100px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.cart .product .productlist .detail > div {
  display: flex;
  align-items: center;
  height: 100%;
}
.cart .product .productlist .detail .checkbox {
  display: flex;
  align-items: center;
}
.cart .product .productlist .detail .checkbox span,
.cart .accounts .checkbox span {
  display: block;
  height: 15px;
  width: 15px;
  background-color: #666;
  position: relative;
}
.cart .product .productlist .detail .checkbox span::after,
.cart .accounts .checkbox span::after {
  display: block;
  content: "";
  height: 8px;
  width: 5px;
  border-right: 2px solid #fff;
  border-bottom: 2px solid #fff;
  position: absolute;
  top: 1.5px;
  left: 4.5px;
  transform: rotate(45deg);
}
.cart .product .productlist .detail .checkbox.checked span,
.cart .accounts .checkbox.checked1 span {
  background-color: #ffc107;
}
.cart .product .productlist .detail .img img,
.cart .top .content .img img {
  width: 80px;
  height: 80px;
}
.cart .product .productlist .detail .text,
.cart .top .content .text {
  height: 100%;
  margin-top: 10px;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: flex-start;
  margin-left: 10px;
}
.cart .product .productlist .detail .text .eng,
.cart .top .content .text .eng {
  color: #666;
  line-height: 20px;
}
.cart .product .productlist .detail .bigsize {
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: flex-end;
  justify-content: flex-start;
  margin-top: 10px;
}
.cart .product .productlist .detail .bigsize .size {
  margin-top: 10px;
}
.cart .product .productlist .detail .bigsize .edit span {
  display: block;
  width: 25px;
  height: 25px;
  background-color: #ddd;
  border-radius: 50%;
  text-align: center;
  line-height: 25px;
  color: #fff;
}
.cart .product .productlist .detail .bigsize .edit span i {
  font-size: 25px;
}
.cart .product .productlist .declare {
  margin-left: 20px;
}
.cart .product .productlist .declare > div {
  height: 22px;
  font-size: 11px;
}
.cart .product .productlist .declare .bp,
.cart .product .productlist .declare .cx {
  display: inline-block;
  height: 17px;
  width: 30px;
  background-color: #ddd;
  text-align: center;
  line-height: 17px;
  padding: 0.5px 5px;
  border-radius: 10px;
  margin-right: 10px;
}
.cart .product .productlist .declare .cx {
  background-color: #f7d3d3;
  color: #f00;
}
.cart .product .productlist .declare .sales {
  display: flex;
  justify-content: space-between;
}
.cart .product .productlist .declare .sales .edit {
  font-weight: bold;
}
</style>
