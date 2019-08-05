<template>
    <div class="content">
        <top :showback="showback"></top>
        <homedetail></homedetail>
        <foot :routeractive="routeractive"></foot>
    </div>
</template>
<script>
import homedetail  from "../product/HomeDetarl.vue";
export default {
  components: {homedetail},
  data() {
    return {
      showback:false,
      routeractive:""
    };
  },
  methods: {},
  mounted() {}
};
</script>
<style lang="scss" scoped>
.content {
  width: 100%;
  height: 100%;
  position: relative;
}
</style>