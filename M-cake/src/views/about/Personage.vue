<template>
    <div>
        <top :showback="showback" :checked="checked"></top>
        <div id="gr">
            <table></table>
            <div id="head_icon">
                <i class="iconfont iconiconfonticon5"></i>
            </div>
            <div id="vip">v1</div>
            <div id="zh" @click="loginOut">切换账号</div>
        </div>
        <div id="gn">
            <ul>
                <li>
                    <router-link to="#"><img src="../../assets/qy//icon_nb2.png" alt=""><br>我的订单</router-link>
                </li>
                <li>
                    <router-link to="#"><img src="../../assets/qy//icon_nb11.png" alt=""><br>待付款</router-link>
                </li>
                <li>
                    <router-link to="#"><img src="../../assets/qy//icon_nb9.png" alt=""><br>待发货</router-link>
                </li>
                <li>
                    <router-link to="#"><img src="../../assets/qy//icon_nb9.png" alt=""><br>会员等级</router-link>
                </li>
                <li>
                    <router-link to="#"><img src="../../assets/qy//icon_nb8.png" alt=""><br>积分</router-link>
                </li>
                <li>
                    <router-link to="#"><img src="../../assets/qy//icon_nb7.png" alt=""><br>余额</router-link>
                </li>
                <li>
                    <router-link to="#"><img src="../../assets/qy//icon_nb6.png" alt=""><br>红包/优惠券</router-link>
                </li>
                <li>
                    <router-link to="#"><img src="../../assets/qy//icon_nb4.png" alt=""><br>现金卡</router-link>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      showback: true,
      checked: 2
    };
  },
  methods: {
    loginOut() {
      this.$messagebox
        .confirm("确认切换账号吗")
        .then(action => {
          sessionStorage.removeItem("USER");
          this.$router.push("/login");
        })
        .catch(cancle => {});
    }
  }
};
</script>
<style scoped>
#gr {
  text-align: center;
  background-color: #dedede;
  width: 100%;
  height: 100px;
}
#head_icon {
  width: 100px;
  height: 100px;
  border-radius: 100px;
  border: 2px solid #aaa;
  position: absolute;
  top: 100px;
  left: 145px;
  background-color: #fff;
  line-height: 100px;
}
#head_icon i {
  font-size: 50px;
  color: #aaa;
}
#vip {
  width: 25px;
  height: 25px;
  text-align: center;
  background-color: #ff0;
  border-radius: 50%;
  position: absolute;
  top: 170px;
  left: 225px;
  line-height: 25px;
}
#zh {
  font-size: 15px;
  position: absolute;
  top: 220px;
  left: 168px;
}
#gn {
  margin-top: 50px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
#gn > ul > li {
  width: 80px;
  height: 70px;
  float: left;
  list-style: none;
  margin-left: 5.6px;
  margin-bottom: 5.6px;
  padding-top: 20px;
  font-size: 12px;
  text-align: center;
  border: 1px solid #ddd;
}
#gn > ul > li > a {
  color: #999;
  text-decoration: none;
}
#gn > ul > li > a > img {
  margin-bottom: 10px;
  width: 30px;
  height: 30px;
}
#gn > ul {
  margin-top: 100px;
  width: 100%;
  height: 200px;
  padding: 10px;
}
</style>