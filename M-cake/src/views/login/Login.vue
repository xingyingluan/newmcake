<template>
    <div class="login-l">
        <top :showback="showback"></top>
        <div class="login-list">
            <div class="lists">
                <span id="phonelogin" @click="loginChose" data-idx="loginyzm" :class="{check:checked==false}">手机验证码登录</span>
                <span id="pwdlogin" @click="loginChose" data-idx="loginpwd" :class="{check:checked==true}">账号密码登录</span>
            </div>
            <mt-tab-container v-model="active">
                <mt-tab-container-item id="loginyzm">
                    <loginyzm></loginyzm>
                </mt-tab-container-item>
                <mt-tab-container-item id="loginpwd">
                    <loginpwd></loginpwd>
                </mt-tab-container-item>
            </mt-tab-container>
            <div class="other_login">
                <ul>
                    <li>
                        <router-link to="/Register">立即注册</router-link>
                    </li>
                    <li>|</li>
                    <li>
                        <router-link to="/Forgetpwd">忘记密码</router-link>
                    </li>
                </ul>
                <div class="other_login_root">
                    <span>其他登录方式</span>
                    <div>
                        <router-link to="#">
                            <img src="../../assets/chu/alipay.png" />
                        </router-link>
                        <router-link to="#">
                            <img src="../../assets/chu/weibo.png" />
                        </router-link>
                    </div>
                </div>
            </div>
        </div>

    </div>

</template>

<script>
import loginyzm from "./LoginYZM";
import loginpwd from "./LoginPWD";
export default {
  data() {
    return {
      active: "loginyzm",
      checked: false,
      showback: true //页面显示城市选择/回退
    };
  },
  methods: {
    loginChose(e) {
      var idx = e.target.dataset.idx;
      this.active = idx;
      this.checked = !this.checked;
    }
  },
  components: {
    loginyzm,
    loginpwd
  }
};
</script>

<style scoped>
.login-l {
  height: 100%;
  background: #ffffff;
}
.login-list {
  padding-top: 49px;
}
.login-list .lists {
  display: flex;
  font-size: 16px;
  justify-content: center;
  color: #666;
  font-weight: bold;
}
.login-list .lists span {
  padding-left: 30px;
  padding-right: 30px;
}

.login-list .lists span.check {
  color: #000;
}

.login-list .other_login {
  font-size: 14px;
  color: #666;
}

.login-list .other_login ul {
  display: flex;

  justify-content: center;
}
.login-list .other_login ul li + li {
  margin-left: 40px;
}
.login-list .other_login ul li a {
  color: #666;
  text-decoration: none;
}
.login-list .other_login .other_login_root {
  text-align: center;
  margin-top: 40px;
}
.login-list .other_login .other_login_root > div img {
  width: 40px;
  padding: 10px 5px;
}
</style>