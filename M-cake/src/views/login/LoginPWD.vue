<template>
    <div class="login">
        <div class="content">
            <div class="login_box">
                <ul>
                    <li>
                        <i class="iconfont iconshouji"></i>
                        <input type="text" v-model="phone" class="input-text" placeholder="手机号码" maxlength="11">
                    </li>
                    <li>
                        <i class="iconfont iconmimasuo"></i>
                        <input type="password" v-model="upwd" class="input-text" placeholder="密码" maxlength="30" minlength="6">
                    </li>
                </ul>
            </div>
            <ul class="login-bottom" @click="login">
                <li>
                    <span class="wraming">立即登录</span>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
export default {
  data() {
    return {
      phone: "",
      upwd: ""
    };
  },
  methods: {
    login() {
      //获取用户的手机号和密码
      var phone = this.phone;
      var upwd = this.upwd;
      //访问服务器，查询用户是否存在
      var obj = { phone, upwd };
      this.axios
        .post("user/login", this.qs.stringify(obj), {
          headers: { "Content-Type": "application/x-www-form-urlencoded" }
        })
        .then(result => {
          if (result.data.code == 1) {
            this.$toast("登录成功");
            sessionStorage.setItem("USER", phone);
            this.$router.push("/home");
          } else {
            this.$toast("用户名或密码错误");
          }
        });
    }
  }
};
</script>

<style scoped>
.iconfont {
  font-size: 28px;
  color: #c6c6c6;
}
.login {
  background: #fff;
  height: 100%;
}
.login .content {
  padding: 15px;
}

.login .login_box ul {
  display: flex;
  flex-wrap: wrap;
}
.login .login_box ul li {
  font-size: 16px;
  height: 47px;
  width: 360px;
  position: relative;
  color: #000;
  border-radius: 5px;
  margin-bottom: 10px;
}
.login .login_box ul li i {
  position: absolute;
  top: 7px;
  left: 10px;
}
.login .login_box ul li .input-text {
  box-sizing: border-box;
  width: 100%;
  height: 100%;
  padding-left: 40px;
  background-color: #ededed;
  border-radius: 5px;
  border: none;
}

.login .login_box ul li.pwd {
  display: flex;
  justify-content: space-between;
  align-items: bottom;
}

.wraming {
  background-color: #ffe32a;
  display: inline-block;
  height: 100%;
  width: 100%;
  text-align: center;
  line-height: 43px;
  border-radius: 5px;
  font-size: 16px;
}
.login .login-bottom {
  font-size: 14px;
  display: flex;
  justify-content: center;
  width: 345px;
  position: fixed;
  bottom: 5px;
  padding: 5px 15px;
  left: 0;
}

.login .login-bottom li {
  width: 100%;
  text-align: center;
}
</style>


