<template>
    <div class="register">
        <top :showback="showback"></top>
        <div class="content">
            <div class="register_box">
                <ul>
                    <li>
                        <i class="iconfont iconshouji"></i>
                        <input type="text" v-model="phone" class="input-text" autofocus placeholder="手机号码" maxlength="11">
                    </li>
                    <li class="pwd">
                        <i class="iconfont iconfanggepailie"></i>
                        <input type="text" class="input-text input_short" placeholder="图片验证码">
                        <div class="yzm">
                            <img src="../../assets/chu/yzm.png">
                        </div>
                    </li>
                    <li class="pwd">
                        <i class="iconfont iconmimasuo"></i>
                        <input type="text" class="input-text input_short" placeholder="手机验证码">
                        <div class="yzm">
                            <span class="wraming" @click="sendYzm">点击发送验证码</span>
                        </div>
                    </li>
                    <li>
                        <i class="iconfont iconmimasuo"></i>
                        <input type="password" v-model="upwd" class="input-text" placeholder="密码" maxlength="30" minlength="6">
                    </li>
                    <li>
                        <i class="iconfont iconmimasuo"></i>
                        <input type="password" class="input-text" v-model="urpwd" placeholder="确认密码" maxlength="30" minlength="6">
                    </li>
                </ul>
            </div>
            <div class="yuedu">
                <p>密码必须是6-30位字符，可使用字母、数字。</p>
                <p class="mcake_agree">
                    <label for="agree" @click="check">
                        <span id="agree" class="icon_agree" :class="{ischecked:checked==true}"></span>
                        <span>同意</span>
                        <span>《MCAKE购物协议》</span>
                    </label>
                </p>
                <p>
                    <router-link class="link" to="/Login">
                        已有账号，立即登录
                    </router-link>
                </p>
            </div>
            <ul class="register-bottom" @click="userRegister">
                <li>
                    <span class="wraming">立即注册</span>
                </li>
            </ul>

        </div>
    </div>
</template>

<script>
export default {
  data() {
    return {
      checked: true,
      phone: "",
      upwd: "",
      urpwd: "",
      showback: true //页面显示城市选择/回退
    };
  },
  methods: {
    sendYzm() {
      console.log("发送验证码");
    },
    check() {
      this.checked = !this.checked;
    },
    userRegister() {
      //获取用户输入的信息
      var phone = this.phone;
      var upwd = this.upwd;
      //手机验证正则
      var regPhone = /^((\+86|0086)\s+)?1[3-9]\d{9}$/;
      //密码验证正则
      var regUpwd = /^[0-9a-zA-Z]{6,30}$/;
      //验证手机号格式是否正确
      if (!regPhone.test(phone)) {
        this.$toast("请填入正确的手机号");
        return;
      } else if (!regUpwd.test(upwd)) {
        //验证密码格式是否正确
        this.$toast("密码格式不正确");
        return;
      } else if (!(upwd == this.urpwd)) {
        this.$toast("确认密码与密码不一致"); //验证确认密码是否与密码一致
        return;
      } else if (!this.checked) {
        this.$toast("请您同意《MCAKE购物协议》"); //是否同意协议
        return;
      } else {
        //验证成功，访问服务器，执行注册操作
        var obj = { phone, upwd };
        //使用post方式
        this.axios
          .post("user/register", this.qs.stringify(obj), {
            headers: { "Content-Type": "application/x-www-form-urlencoded" }
          })
          .then(result => {
            //根据返回值不同，提示不同的内容
            if (result.data.code == 2) {
              this.$toast("该手机号已注册");
            } else if (result.data.code == 1) {
              this.$toast("注册成功,请登录");
              this.$router.push("/Login");
            }
          });
      }
    }
  }
};
</script>

<style scoped>
.iconfont {
  font-size: 28px;
  color: #c6c6c6;
}
.register {
  background: #fff;
  height: 100%;
}
.register .content {
  padding: 15px;
}

.register .register_box ul {
  display: flex;
  flex-wrap: wrap;
}
.register .register_box ul li {
  font-size: 16px;
  height: 47px;
  width: 360px;
  position: relative;
  color: #000;
  border-radius: 5px;
  margin-bottom: 10px;
}
.register .register_box ul li i {
  position: absolute;
  top: 7px;
  left: 10px;
}
.register .register_box ul li .input-text {
  box-sizing: border-box;
  width: 100%;
  height: 100%;
  padding-left: 40px;
  background-color: #ededed;
  border-radius: 5px;
  border: none;
}

.register .register_box ul li.pwd {
  display: flex;
  justify-content: space-between;
  align-items: bottom;
}

.register .register_box ul li .input-text.input_short {
  width: 55%;
}
.register .register_box ul li .yzm {
  width: 43%;
  height: 46px;
}
.register .register_box ul li .yzm img {
  width: 100%;
  height: 100%;
  margin-top: 3px;
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
.register .yuedu {
  font-size: 12px;
  text-align: center;
  margin-top: 15px;
  color: #8d8d8d;
}
.register .yuedu .mcake_agree {
  font-size: 14px;
  line-height: 40px;
  margin-bottom: 10px;
}

.link {
  color: #8d8d8d;
  text-decoration: none;
  font-size: 14px;
}
.register .register-bottom {
  font-size: 14px;
  display: flex;
  justify-content: center;
  width: 345px;
  position: fixed;
  bottom: 5px;
  padding: 5px 15px;
  left: 0;
}

.register .register-bottom li {
  width: 100%;
  text-align: center;
}

.icon_agree {
  display: inline-block;
  width: 10px;
  height: 10px;
  border: 1px solid #ffe32a;
  margin-right: 10px;
  border-radius: 50%;
  position: relative;
}

.icon_agree.ischecked::after {
  content: "";
  display: block;
  width: 8px;
  height: 8px;
  background: #ffe32a;
  border-radius: 50%;
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -4px;
  margin-top: -4px;
}
</style>


