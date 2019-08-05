import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import "./App.scss"

// Mint-UI
import Mint from 'mint-ui'
import 'mint-ui/lib/style.css'
Vue.use(Mint);
import {
    CellSwipe
} from 'mint-ui';

Vue.component(CellSwipe.name, CellSwipe);

// iconfont 字体图标库
import "../public/iconfont/iconfont.css"

// rem 适配
import 'lib-flexible'

//引入axios.js文件
import axios from "./axios"

// 注册公共组件
import components from "./components/index";
Object.keys(components).forEach(key => {
    Vue.component(key, components[key]);
});

// router.beforeEach($)
Vue.config.productionTip = false

new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')