<template>
    <div class="search" style="">
        <div class="content">
            <div class="search-bar">
                <input v-model="searchkey" type="text" id="search_input" placeholder="请输入关键词" onfocus="this.placeholder=''" onblur="this.placeholder='请输入关键词'" class="input_style">
            </div>
            <div class="search_recommend">
                <span>拿破仑</span>、
                <span>巧克力</span>、
                <span>芝士</span>、
                <span>鲜奶</span>、
                <span>坚果</span>、
                <span>小食</span>
            </div>
            <div class="btns" @click="seek" >搜索</div>
        </div>
    </div>
</template>
<script>
export default {
  inject:["reload"],
  data() {
    return {
      searchkey:"",
    };
  },
  methods: {
      seek(){
        /*
        if(this.searchkey.length<=0){
          this.$router.push({path: '/cake'})
          this.reload();
        }else if(this.searchkey.length>0){
          if(this.searchkey=='拿破仑' || this.searchkey=='巧克力' || this.searchkey=='芝士' || this.searchkey=='鲜奶' || this.searchkey=='坚果'){
           this.$router.push({path: '/lists',query:{lname:this.searchkey}})
          }else if(this.searchkey=='小食' || this.searchkey=='小' ){
            this.$router.push({path:'/cookies'});
            this.reload();
          }else{
            this.$router.push({path:'/lists',query:{lname:1}});
          }
        }*/
        if(this.searchkey.length<=0){
          this.$router.push({path: '/cake'})
          this.reload();
        }else if(this.searchkey.length>0){
          if(this.searchkey=='小食' || this.searchkey=='小' ){
            this.$router.push({path:'/cookies'});
            this.reload();
          }else{
            this.$router.push({path: '/lists',query:{lname:this.searchkey}})
            this.reload();
          }
        }
      }
    },
    watch:{
        $route(to,from){
            if(this.$route.path=="/lists"){
                this.reload();
            };
        }
    },
  mounted() {}
};
</script>
<style lang="scss" scoped>
.search {
  position: fixed;
  width: 100%;
  height: 100%;
  background-color: #f5f5f5;
  z-index: 1997;
  top: 60px;
  .content {
    background-color: #fff;
    padding: 22px 0;
    font-size: 12px;
    .search-bar {
      width: 208px;
      height: 32px;
      margin: 11px auto;
      text-align: center;
      input {
        text-align: center;
        font-size: 16px;
        border: none;
        background: 0 0;
        width: 100%;
        height: 100%;
      }
    }
    .search_recommend {
      font-size: 12px;
      line-height: 18px;
      color: #666;
      text-align: center;
      padding-bottom: 20px;
    }
    .btns {
      font-size: 18px;
      line-height: 45px;
      width: 360px;
      height: 45px;
      margin-left: 7.5px;
      background: #ffe32a !important;
      text-align: center;
      border-radius: 6px;
    }
  }
}
</style>