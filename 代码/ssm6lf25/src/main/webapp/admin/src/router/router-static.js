import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import jinchangtingche from '@/views/modules/jinchangtingche/list'
    import news from '@/views/modules/news/list'
    import lichangshoufei from '@/views/modules/lichangshoufei/list'
    import quxiaoyuyue from '@/views/modules/quxiaoyuyue/list'
    import messages from '@/views/modules/messages/list'
    import yuyuetingche from '@/views/modules/yuyuetingche/list'
    import config from '@/views/modules/config/list'
    import chezhu from '@/views/modules/chezhu/list'
    import shangjia from '@/views/modules/shangjia/list'
    import tingchechangxinxi from '@/views/modules/tingchechangxinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/jinchangtingche',
        name: '进场停车',
        component: jinchangtingche
      }
      ,{
	path: '/news',
        name: '通知公告',
        component: news
      }
      ,{
	path: '/lichangshoufei',
        name: '离场收费',
        component: lichangshoufei
      }
      ,{
	path: '/quxiaoyuyue',
        name: '取消预约',
        component: quxiaoyuyue
      }
      ,{
	path: '/messages',
        name: '留言板管理',
        component: messages
      }
      ,{
	path: '/yuyuetingche',
        name: '预约停车',
        component: yuyuetingche
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/chezhu',
        name: '车主',
        component: chezhu
      }
      ,{
	path: '/shangjia',
        name: '商家',
        component: shangjia
      }
      ,{
	path: '/tingchechangxinxi',
        name: '停车场信息',
        component: tingchechangxinxi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
