import Vue from 'vue'
import Router from 'vue-router'
Vue.use(Router)

export default new Router({
    routes: [{
        path: '/',
        name: 'Home',
        component: () => import('./views/home/Home.vue')
    }, {
        path: '/home',
        name: 'home',
        component: () => import('./views/home/Home.vue')
    },
    { //登录
        path: '/login',
        name: 'login',
        component: () => import('./views/login/Login.vue')
    },
    { //注册
        path: '/register',
        name: 'register',
        component: () => import('./views/register/Register.vue')
    },
    { //购物车
        path: '/cart',
        name: 'cart',
        component: () => import('./views/shoppingcart/Cart.vue')
    },
    { //详情
        path: '/detail',
        name: 'detail',
        component: () => import('./views/detail/Detail.vue')
    },
    { //首页商品详情
        path: '/HomeDetarl',
        name: 'HomeDetarl',
        component: () => import('./views/product/HomeDetarl.vue')
    },
    { //蛋糕
        path: '/Cake',
        name: 'Cake',
        component: () => import('./views/product/Cake.vue')
    },
    { //小食
        path: '/Cookies',
        name: 'Cookies',
        component: () => import('./views/product/Cookies.vue')
    },
    { //查询商品列表
        path: '/Lists',
        name: 'Lists',
        component: () => import('./views/product/Lists.vue')
    },
    { //活动详情页面
        path: '/activity',
        name: 'activity',
        component: () => import('./views/about/Activity.vue')
    },
    { //个人中心
        path: '/personage',
        name: 'personage',
        component: () => import('./views/about/Personage.vue')
    },
    { //关于我们
        path: '/aboutus',
        name: 'aboutus',
        component: () => import('./views/about/Aboutus.vue')
    },
    { //最新活动详情
        path: '/activitydetail',
        name: 'activitydetail',
        component: () => import('./views/news/ActivityDetail.vue')
    },
    ]
})