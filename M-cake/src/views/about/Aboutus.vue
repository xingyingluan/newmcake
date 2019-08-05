<template>
  <div >
    <top :showback="showback" :checked="checked"></top>
    <h4 style="margin-top:20px;">关于我们</h4>
    <div class="txt">Mcake隶属于上海卡法电子商务有限公司。公司成立于2011年，是为美食者打造的蛋糕品牌。目前服务上海、杭州、苏州、北京四大城市，建立了独立的生产加工工厂。Mcake团队从研发生产到销售配送，全程实施监控运行，使用来自法国等地近70种原材料，严格遵守蛋糕制作工艺，带来难忘的巴黎味道。
    </div>
    <h4>联系我们</h4>
    <div class="dz">上海卡法电子商务有限公司<br>地址：上海市普陀区同普路1130弄3号楼<br>电话：021-52691591<br>社会信用代码：913101070678091460<br>食品经营许可证编号：JY13101070034251</div>
    <div class="dz">上海卡法电子商务有限公司北京分公司<br>地址：北京市朝阳区东四环中路82号3座04层505<br>电话：010-52088262<br>社会信用代码：911101053484280752<br>食品经营许可证编号：SP1101051510352565</div>
    <div class="dz">上海卡法电子商务有限公司杭州分公司<br>地址：杭州市拱野区中环大厦607室<br>电话：0571-28103688<br>社会信用代码：913301060920344424<br>食品经营许可证编号：JY13301050141226</div>
    <div class="dz">呼叫中心服务时间：8:00 - 22:00 全年无休<br>服务热线：4006-678-678</div>
    <div class="btm"></div>
    <div class="bottombtn">
        <button id="btn" @click="goback">返回</button>
    </div>
  </div>
    
   
</template>
<script>
    export default{
        data(){
            return{
               showback:true,
                checked:3
            }
        },
        methods:{
            goback(){
                this.$router.go(-1);
                }
        }
    }
</script>
<style scoped>
  h4{
      text-align:center;
  }
  .txt{
      text-indent:2em;
      line-height:25px;
      margin:10px;
      font-size:14px;
  }
  .dz{
      line-height:25px;
      margin:16px;
      font-size:13px;
  }
  .bottombtn{
      width:100%;
      background:#fff;
      height:60px;
      position:fixed;
      bottom:0;
      line-height:60px;
      text-align:center;
  }
  #btn{
      width:95%;
      height:45px;
      border-radius:5px;
      font-size:18px;
      background-color:yellow;
  }
  .btm{
      height:40px;
  }
</style>