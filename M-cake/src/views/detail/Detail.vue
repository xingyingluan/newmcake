<template>
    <div>
        <top :showback="showback"></top>
        <div class="detail">
            <!--顶部的轮播图（商品轮播）-->
            <div>
                <mt-swipe :auto="4000">
                    <mt-swipe-item>
                        <img :src="imgUrl+nowImg1" />
                    </mt-swipe-item>
                    <mt-swipe-item>
                        <img :src="imgUrl+nowImg2" />
                    </mt-swipe-item>
                    <mt-swipe-item>
                        <img :src="imgUrl+nowImg3" />
                    </mt-swipe-item>
                </mt-swipe>
            </div>
            <!--商品详细介绍-->
            <div class="bigsize">
                <ul @click="choose" class="sizelist">
                    <li v-for="(item,i) of lilist" :key="i" :data-idx="i" :class="{'active':nowIndex==i}">
                        <span class="size" v-text="item.size"></span>
                        <span v-text="item.people"></span>
                    </li>
                </ul>
                <div class="nowprice">
                    <span>¥{{nowPrice}}</span>
                </div>
                <div class="declare">
                    <ul>
                        <li>
                            <i class="iconfont iconai253"></i>
                            <span v-text="`提前${nowSchedule}小时预订`"></span>
                        </li>
                        <li>
                            <i class="iconfont icongouwuche"></i>
                            <span v-text="nowBig"></span>
                        </li>
                        <li>
                            <i class="iconfont iconicon-"></i>
                            <span v-text="nowWeight"></span>
                        </li>
                        <li class="standard">
                            <i></i>
                            <span v-text="`标准配餐×${nowTableware}份`"></span>
                        </li>
                    </ul>
                </div>
                <div class="taste">
                    <i class="iconfont icongouwuche"></i>
                    <span v-for="(flavor,i) of Flavors" :key="i">{{flavor}}</span>
                </div>
                <div class="explain">
                    <p class="en-explain">{{Cnexplain}}</p>
                    <p class="ch-explain">{{Ehexplain}}</p>
                </div>
                <div class="sales">
                    <div>
                        <span>促销</span>
                    </div>
                    <div class="favorable">
                        <span class="favorable-tab">换购</span>
                        <span>买蛋糕可参与优惠换购</span>
                    </div>
                    <div class="detail-right">
                        <router-link to="#">
                            <span>详情</span>
                            <span>&gt;</span>
                        </router-link>
                    </div>
                </div>
            </div>
            <!--商品详情，商品点评-->
            <div class="product">
                <mt-navbar v-model="selected">
                    <mt-tab-item id="1">商品详情</mt-tab-item>
                    <mt-tab-item id="2">商品点评</mt-tab-item>
                </mt-navbar>
                <mt-tab-container v-model="selected">
                    <mt-tab-container-item id="1">
                        <div class="flavor">
                            <ul>
                                <li>
                                    <span>Base 口味基底</span>
                                    <span v-text="Base"></span>
                                </li>
                                <li>
                                    <span>Texture口感</span>
                                    <span v-text="Texture"></span>
                                </li>
                                <li>
                                    <span>Flavor 口味</span>
                                    <span>{{flavors}}</span>
                                </li>
                                <li>
                                    <span>Acidite 酸味</span>
                                    <span>
                                        <img v-for="n in acidites" :key="n" src="../../assets/chu/acid.png" />
                                    </span>
                                </li>
                            </ul>
                        </div>
                        <div class="country">
                            <ul>
                                <li>
                                    <img src="../../assets/chu/2014081310573865350.jpg" />
                                    <span>法国奶油</span>
                                </li>
                                <li>
                                    <img src="../../assets/chu/2014081311051082745.jpg" />
                                    <span>新西兰黄油</span>
                                </li>
                                <li>
                                    <img src="../../assets/chu/2015081714304869240.png" />
                                    <span>甄选白砂糖</span>
                                </li>
                                <li>
                                    <img src="../../assets/chu/2014081310573865350.jpg" />
                                    <span>法国果茸</span>
                                </li>
                                <li>
                                    <img src="../../assets/chu/2014081311103875350.jpg" />
                                    <span>比利时白巧克力</span>
                                </li>
                                <li>
                                    <img src="../../assets/chu/2015081714295193313.jpg" />
                                    <span>马来西亚薄荷糖浆</span>
                                </li>
                                <li>
                                    <img src="../../assets/chu/2015081714300728083.png" />
                                    <span>世界甄选青柠檬</span>
                                </li>
                                <li>
                                    <img src="../../assets/chu/2015081714303287216.jpg" />
                                    <span>波多黎各朗姆酒</span>
                                </li>
                                <li>
                                    <img src="../../assets/chu/2015122310113324304.png" />
                                    <span>甄选薄荷叶</span>
                                </li>
                            </ul>
                        </div>
                        <div class="image-detail">
                            <img :src="imgUrl+nowImgBottom" />
                        </div>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="2">
                        <div class="comments" v-for="(item,i) of commentlist" :key="i">
                            <div class="comments-top">
                                <div>
                                    <span class="membericon" v-text="item.grade"></span>
                                    <!-- <span v-text="`会员：${item.phone}`"></span>-->
                                    <span v-text="`会员：${item.phone.slice(0,3)}****${item.phone.slice(-4)}`"></span>
                                </div>
                                <span v-text="item.reviews_time"></span>
                            </div>
                            <div class="comments-bottom">
                                <p v-text="item.container"></p>
                            </div>
                        </div>
                        <div class="page">
                            <ul @click="chooseNumber">
                                <li :class="{'choose':chooseid==item}" :data-idx="item" v-for="(item,i) of arrNum" :key="i">{{item}}</li>
                            </ul>
                        </div>
                    </mt-tab-container-item>
                </mt-tab-container>
            </div>
            <!--加入购物车，立即购买-->
            <div class="fixed-bottom">
                <div class="bottom">
                    <button @click="addCart" class="cart">加入购物车</button>
                    <button @click="nowBuy" class="buy">立即购买</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
  components: {},
  data() {
    return {
      ProductId: 11, //待变更成动态  可用数据 11,13,9
      chooseid: 1, //评论区分页页码，表示当前选中的页码数
      selected: "1", //商品详情/商品点评
      nowIndex: 0, //商品尺寸选择列表 当前选中的尺寸
      Flavors: ["慕斯"], //口味
      flavors: "", //合并显示口味
      acidites: 0, //口味酸度
      Base: "", //口味基底
      Texture: "", //口感
      lilist: [
        {
          size: "1磅（454g）",
          people: "2-3人食",
          price: "198.00",
          schedule: 5,
          big: "约15cm*5.0cm",
          weight: "454g",
          tableware: 5
        },
        {
          size: "2磅（908g）",
          people: "4-7人食",
          price: "298.00",
          schedule: 5,
          big: "约18cm*5.0cm",
          weight: "908g",
          tableware: 10
        },
        {
          size: "3磅（1.36kg）",
          people: "8-12人食",
          price: "428.00",
          schedule: 24,
          big: "约22cm*5.0cm",
          weight: "1.36kg",
          tableware: 15
        }
      ],
      nowPrice: 0, //当前尺寸的商品的价格
      nowSchedule: 0, //当前商品提前预定时间
      nowBig: 0, //当前的尺寸
      nowWeight: 0, //当前的重量
      nowTableware: 0,
      Cnexplain:
        "Mojito拧·漾，柔滑慕斯内蕴Q弹酒冻，绝妙配比带来口感的平衡，不太浓烈，绝妙配比带来口感的平衡，不太浓烈。",
      Ehexplain:
        "Use mouse au citron legerment mouse au citron legerment mouse au citron legerment mouse au citron legerment mouse au citron. ",
      nowdetails: [], //当前商品的内容详情
      commentlists: [], //总评论内容
      commentlist: [], //每页显示的评论
      marginleft: 0,
      liLength: 10,
      arrNum: [1, 2, 3, 4, 5], //分页导航的当前页数列表
      lengthLis: 10,
      countNum: 5,
      nowImg1: "1/1.jpg", //轮播图图片存储
      nowImg2: "1/1.jpg",
      nowImg3: "1/1.jpg",
      nowImgBottom: "1/1.jpg",
      imgUrl: "http://127.0.0.1:8080/img/details/",
      showback:true,//页面显示城市选择/回退
      routeractive:""
    };
  },
  methods: {
    //获取商品的详细信息
    getDetail() {
      //获取商品详细信息
      this.axios
        .get("user/getdetail", { params: { cid: this.ProductId } })
        .then(res => {
          this.nowdetails = res.data[0];
          this.Ehexplain = this.nowdetails.promise_e; //中文简介
          this.Cnexplain = this.nowdetails.promise_c; //英文简介
          this.nowImg1 = this.nowdetails.img_first; //轮播图
          this.nowImg2 = this.nowdetails.img_tow;
          this.nowImg3 = this.nowdetails.img_three;
          this.nowImgBottom = this.nowdetails.img_bottom; //底部展示图
          this.Flavors = this.nowdetails.flavor.split("/"); //口味单独显示
          this.flavors = this.nowdetails.flavor; //口味合并显示
          this.acidites = this.nowdetails.acidite; //口味酸度
          this.Base = this.nowdetails.base; //口味基底
          this.Texture = this.nowdetails.texture; //口感
          //计算价格
          this.lilist[0].price = parseFloat(this.nowdetails.price).toFixed(2);
          this.lilist[1].price = parseFloat(
            Math.floor(this.nowdetails.price * 1.5)
          ).toFixed(2);
          this.lilist[2].price = parseFloat(
            Math.floor(this.nowdetails.price * 2.3)
          ).toFixed(2);
          this.nowPrice = this.lilist[0].price;
        });
    },
    //根据不同的蛋糕分量，显示不同的商品信息
    choose(e) {
      if (e.target.parentNode.nodeName == "LI") {
        var idx = e.target.parentNode.dataset.idx;
        this.nowIndex = idx;
        this.nowPrice = this.lilist[idx].price;
        this.nowSchedule = this.lilist[idx].schedule;
        this.nowBig = this.lilist[idx].big;
        this.nowWeight = this.lilist[idx].weight;
        this.nowTableware = this.lilist[idx].tableware;
      }
    },
    //查询用户评论
    selectComment() {
      //开始默认第一页显示
      let obj = {
        page: 1,
        count: this.countNum,
        product_id: this.ProductId
      };
      this.axios.get("user/commentpagesel", { params: obj }).then(res => {
        this.commentlist = res.data;
      });
      //console.log(this.commentlist);
      //获取所有数据
      this.axios
        .get("user/commentsel", {
          params: { product_id: this.ProductId }
        })
        .then(res => {
          this.commentlists = res.data;
          this.lengthLis = Math.ceil(this.commentlists.length / this.countNum);
          //console.log(this.commentlists);
          if (this.lengthLis < this.countNum) {
            this.arrNum = this.lengthLis;
          }
        });
    },
    addCart() {
      console.log("加入购物车");
    },
    nowBuy() {
      console.log("立即购买");
    },
    chooseNumber(e) {
      //分页导航点击事件
      //判断当前点击的是LI
      if (e.target.nodeName == "LI") {
        /***分页导航条开始***/
        //获取当前点击的是哪一页
        var chooseid = parseInt((this.chooseid = e.target.dataset.idx));
        //测试用输出
        //console.log(chooseid);

        //定义数组保存当前评论数据总页码
        let arrNums = [];
        for (var i = 1; i <= this.lengthLis; i++) {
          arrNums.push(i);
        }
        if (this.lengthLis > this.countNum) {
          //获取选中的页码在数组中的位置
          let index = arrNums.indexOf(chooseid);
          //测试输出用
          //console.log("index"+index);
          //当前显示页码存放数组//显示的页数在3~总页数-2范围内，执行以下操作
          if (index > 2 && index < this.lengthLis - 2) {
            this.arrNum = arrNums.slice(index - 2, index + 3);
            //console.log(this.arrNum);
          } else if (index <= 2) {
            //点击的页码小于第四页时。显示1,2,3,4,5
            this.arrNum = [1, 2, 3, 4, 5];
          }
        } else {
          this.arrNum = arrNums;
        }
        /***分页导航条结束***/
        /****查询评论开始****/
        let obj = {
          page: chooseid,
          count: this.countNum,
          product_id: this.ProductId
        };
        this.axios.get("user/commentpagesel", { params: obj }).then(res => {
          this.commentlist = res.data;
          // console.log(res);
          // console.log(this.commentlist);
        });
        /****查询评论结束****/
      }
    }
  },
  created() {
    //页面初始化事件
    this.nowSchedule = this.lilist[0].schedule;
    this.nowBig = this.lilist[0].big;
    this.nowWeight = this.lilist[0].weight;
    this.nowTableware = this.lilist[0].tableware;
    //获取商品的id
    this.ProductId=this.$route.query.ProductId;
    this.selectComment();
    this.getDetail();
    //获取需要显示的商品的id
   
    console.log(this.ProductId);
  }
};
</script>

<style scoped>
.detail {
  font-size: 12px;
 
}
.bigsize {
  color: #666;
  padding: 5px;
}
.bigsize ul {
  display: flex;
  justify-content: space-around;
  border-bottom: 0.5px solid #ddd;
}
.bigsize ul li {
  height: 49px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 33.33%;
}
.bigsize ul li.active {
  border-bottom: 2px solid #ffeb3b;
  color: #000;
}

.bigsize ul li span {
  text-align: center;
  font-size: 12px;
}

.bigsize ul li span.size {
  font-size: 14px;
}

.detail .nowprice {
  border-bottom: 0.5px solid #ddd;
  font-size: 20px;
  color: #000;
  padding: 7px 2px;
}
.detail .declare {
  padding: 0 5px;
}
.detail .declare ul {
  display: flex;
  flex-wrap: wrap;
  justify-content: left;
}
.detail .declare ul li {
  display: flex;
  flex-direction: row;
  justify-content: left;
  height: 30px;
}
.detail .declare ul li span {
  margin-left: 5px;
  margin-top: -2px;
}
.detail .bigsize .taste {
  border-bottom: 0.5px solid #ddd;
  font-size: 14px;
  color: #000;
  display: flex;
  align-items: center;
  height: 49px;
  padding: 0 5px;
}
.detail .bigsize .standard i {
  width: 15px;
  height: 20px;
  display: inline-block;
  background: url(../../assets/chu/icon_nb1.png) no-repeat center center;
  background-size: 100%;
}

.detail .bigsize .taste span {
  display: block;
  border: 1px solid #ddd;
  padding: 1px 10px;
  border-radius: 7px;
  margin-left: 10px;
}
.detail .bigsize .explain {
  padding: 5px;
  font-size: 13px;
}
.detail .bigsize .explain p {
  line-height: 20px;
}
.detail .bigsize .sales {
  font-size: 12px;
  padding: 0px 5px;
  margin-top: 10px;
  display: flex;
  justify-content: space-between;
  border-bottom: 0.5px solid #ddd;
  padding-bottom: 10px;
}
.detail .bigsize .sales .favorable .favorable-tab {
  display: inline-block;
  padding: 0 7px;
  border: 1px solid #f00;
  border-radius: 10px;
  color: #f00;
  margin-right: 5px;
}
.detail .bigsize .sales .detail-right span {
  margin-right: 10px;
}
.detail .bigsize .sales .detail-right a {
  text-decoration: none;
  color: #666;
}
.detail .product {
  padding: 5px;
  margin-bottom: 52px;
}
.detail .product .flavor {
  margin-top: 10px;
  padding: 5px;
}
.detail .product .country {
  margin-top: 5px;
  padding: 5px;
}
.detail .product .flavor ul li {
  display: flex;
  justify-content: space-between;
  line-height: 20px;
  color: #666;
}
.detail .product .flavor ul li span:last-child {
  color: #000;
}
.detail .product .country {
  border-bottom: 0.5px solid #ddd;
}
.detail .product .country ul {
  display: flex;
  flex-wrap: wrap;
  justify-content: left;
}
.detail .product .country ul li {
  padding-right: 15px;
  line-height: 20px;
}
.detail .product .country ul li img {
  width: 17px;
  margin-right: 10px;
}
.detail .image-detail {
  width: 100%;
}
.detail .image-detail img {
  width: 100%;
}
.detail .fixed-bottom .bottom {
  padding: 0 5px;
  background: #fff;
  text-align: center;
}

.detail .bottom button {
  width: 180px;
  height: 46px;
  border-radius: 5px;
  border: 0;
  font-size: 16px;
  margin-top: 5px;
}
.detail .bottom button.cart {
  background-color: #795548;
  color: #fff;
  margin-right: 5px;
}
.detail .bottom button.buy {
  background-color: #ffc107;
}
.detail .fixed-bottom {
  position: fixed;
  bottom: 0;
  left: 0;
}
.detail .product .comments {
  display: flex;
  flex-direction: column;
  padding: 10px 5px;
  background-color: #eee;
  margin-top: 10px;
  color: #666;
}
.detail .product .comments .comments-top {
  display: flex;
  justify-content: space-between;
  margin-bottom: 5px;
}
.membericon {
  display: inline-block;
  height: 20px;
  width: 20px;
  background: #ffc107;
  line-height: 20px;
  text-align: center;
  border-radius: 50%;
  color: #000;
  margin-right: 5px;
}
.detail .product .page {
  overflow: hidden;
  height: 30px;
  margin: 0 auto;
  margin-top: 10px;
  text-align: center;
}
.detail .product .page ul {
  margin-left: 0px;
}
.detail .product .page ul li.choose {
  background: #ffc107;
}
.detail .product .page ul li {
  display: inline-block;
  padding: 5px;
  text-align: center;
  border-radius: 5px;
  margin-right: 5px;
}
</style>