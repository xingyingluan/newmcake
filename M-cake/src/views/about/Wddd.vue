<template>
    <div>
        <div id="hd">
            <mt-button @click.prevent="active='tab1'" type="primary">全部</mt-button>
            <mt-button @click.prevent="active='tab2'" type="primary">待收货</mt-button>
            <mt-button @click.prevent="active='tab3'" type="primary">待付款</mt-button>
            <mt-button @click.prevent="active='tab4'" type="primary">待审核</mt-button>
            <mt-button @click.prevent="active='tab5'" type="primary">已取消</mt-button>
            <mt-button @click.prevent="active='tab6'" type="primary">已完成</mt-button>
            <mt-button @click.prevent="active='tab7'" type="primary">已退货</mt-button>
        </div>
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="tab1">
                全部
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
                待收货
            </mt-tab-container-item>
            <mt-tab-container-item id="tab3">
                待付款
            </mt-tab-container-item>
            <mt-tab-container-item id="tab4">
                待审核
            </mt-tab-container-item>
            <mt-tab-container-item id="tab5">
                已取消
            </mt-tab-container-item>
            <mt-tab-container-item id="tab6">
                已完成
            </mt-tab-container-item>
            <mt-tab-container-item id="tab7">
                已退货
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>
<script>
    export default{
        data(){
            return{
                active:"tab1",
            }
        },
        methods:{
          
           
        }
    }
</script>
<style scoped>
  #hd{
      display:inline-block;
      overflow:hidden;
      height:40px;
     
  }
  #hd>mt-button{
      
  }
</style>