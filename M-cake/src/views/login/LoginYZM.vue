<template>
    <div class="login">
        <div class="content">
            <div class="login_box">
                <ul>
                    <li>
                        <i class="iconfont iconshouji"></i>
                        <input type="text" v-model="phone" class="input-text" placeholder="手机号码" maxlength="11">
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
                </ul>
            </div>
            <ul class="login-bottom">
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
      phone: ""
    };
  },
  methods: {
    sendYzm() {}
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

.login .login_box ul li .input-text.input_short {
  width: 55%;
}
.login .login_box ul li .yzm {
  width: 43%;
  height: 46px;
}
.login .login_box ul li .yzm img {
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


