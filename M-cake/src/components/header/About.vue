<template>
    <div class="about">
        <div class="top1">
            <div class="lists">
                <ul>
                    <li @click="newActive" data-atarget="activity" :class="{'checked':checked==1}">
                        <i class="iconfont icontubiao-"></i>
                        <div>最新活动</div>
                    </li>
                    <li @click="newActive" data-atarget="personage" :class="{'checked':checked==2}">
                        <i class="iconfont iconiconfonticon5"></i>
                        <div>个人中心</div>
                    </li>
                    <li @click="newActive" data-atarget="aboutus" :class="{'checked':checked==3}">
                        <i class="iconfont iconguanyuwomen"></i>
                        <div>关于我们</div>
                    </li>
                    <li @click="newActive" data-atarget="distribution" :class="{'checked':checked==4}">
                        <i class="iconfont iconzerenfanwei"></i>
                        <div>配送范围</div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="top2" @click="showAboutShdow"></div>
    </div>
</template>

<script>
export default {
  props: {
    modalShow: {
      type: Boolean
    },
    checked:0,//当前页面是哪个选项
  },
  data() {
    return {
    };
  },
  methods: {
    showAboutShdow() {
      this.$emit("update:modalShow", false);
    },
    newActive(e){
      let nowtarget=e.currentTarget.dataset.atarget;
      this.$router.push(nowtarget);
    }
  }
};
</script>
<style  lang="scss" scoped>
.about {
  overflow: hidden;
  position: fixed;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.3);
  top: 60px;
  // bottom: 50px;
  z-index: 2;
  border-top: 0.5px solid #ddd;
  .top1 ul {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 106px;
    background: #fff;
    box-sizing: border-box;
    color: #666;
    li {
      width: 25%;
      text-align: center;
      display: flex;
      flex-direction: column;
      height: 106px;
      align-items: center;
      justify-content: center;
      font-size: 12px;
      div {
        margin-top: 10px;
      }
    }
    li + li {
      border-left: 0.5px solid #ddd;
    }
  }
  .top2 {
    width: 100%;
    height: 100%;
  }
}
.iconfont {
  font-size: 28px;
}
.checked{
  background:#ddd;
}
</style>

