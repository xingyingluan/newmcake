<template>
    <div>
        <div>
            <img src="../../assets/gzy/top.png" v-if="btnFlag" class="go-top" @click="backTop">
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return{
               btnFlag:false
            }
        },
        mounted () {
            window.addEventListener('scroll', this.scrollToTop);
        },
        destroyed () {
            window.removeEventListener('scroll', this.scrollToTop);
        },
        methods:{
            backTop () {
                let that = this;
                let timer = setInterval(() => {
                    let ispeed = Math.floor(-that.scrollTop / 5);
                    document.documentElement.scrollTop = document.body.scrollTop = that.scrollTop + ispeed;
                    if (that.scrollTop === 0) {
                        clearInterval(timer);
                    }
                }, 20)
            },
            scrollToTop () {
                let that = this;
                let scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
                that.scrollTop = scrollTop;
                if (that.scrollTop > 100) {
                    that.btnFlag = true
                } else {
                    that.btnFlag = false
                }
            }
        }
    }
</script>
<style scoped>
    .go-top{
        width:30px;
        height:30px;
        position:fixed;
        top:500px;
        left:325px;
        background:rgba(0,0,0,0.4);
        border-radius:50%;
        padding:5px;
    }
</style>