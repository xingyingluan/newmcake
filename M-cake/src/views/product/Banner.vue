<template>
<div> 
  <div id="banner">
  <mt-swipe :auto="4000">
    <mt-swipe-item v-for="(item,i) of lists" :key="i" ><img style="width:375px;height:390.63px" :src="`${url}${item.img}`" alt=""></mt-swipe-item>
<!--    <mt-swipe-item><img style="width:375px;height:390.63px" src="../../assets/img/9b94295ec789af2a.jpg" alt=""></mt-swipe-item>
    <mt-swipe-item><img style="width:375px;height:390.63px" src="../../assets/img/9d3a5c15b52802f9.jpg" alt=""></mt-swipe-item>
    <mt-swipe-item><img style="width:375px;height:390.63px" src="../../assets/img/4ea5b824c818875c.jpg" alt=""></mt-swipe-item>
    <mt-swipe-item><img style="width:375px;height:390.63px" src="../../assets/img/391c6fd7e06d0c10.jpg" alt=""></mt-swipe-item>     -->
  </mt-swipe>
  </div>
</div>
</template>
<script>
    export default{
        data(){
            return{
               lists:[],
               url:"http://127.0.0.1:8080/img/",
            }
        },
        methods:{
            ban(){
                var url = "lists/banner";
                this.axios.get(url).then(result=>{
                    this.lists = result.data;
                })
            }
        },
        created() {
            this.ban()
        },
    }
</script>
<style scoped>
    
    #banner{
        width:375px;height:390.63px;
    }
    
</style>