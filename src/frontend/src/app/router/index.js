import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '@/app/views/HomeView.vue'
import CommunityView from '@/app/views/CommunityView.vue'
import ExploreView from '@/app/views/ExploreView.vue'
import TablesView from '@/app/views/TablesView.vue'
import AboutToolsView from '@/app/views/AboutToolsView.vue'
import AboutDataView from '@/app/views/AboutDataView.vue'
import FaqsView from '@/app/views/FaqsView.vue'
import UnauthorizedView from '@/app/views/UnauthorizedView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    redirect: '/home'
  },
  {
    path: '/home',
    name: 'home',
    component: HomeView,
  },
  {
    path: '/community',
    name: 'community',
    component: CommunityView,
  },
  {
    path: '/explore',
    name: 'explore',
    component: ExploreView,
  },
  {
    path: '/tables',
    name: 'tables',
    component: TablesView,
  },
  {
    path: '/about-tools',
    name: 'about-tools',
    component: AboutToolsView,
  },
  {
    path: '/about-data',
    name: 'about-data',
    component: AboutDataView,
  },
  {
    path: '/faqs',
    name: 'faqs',
    component: FaqsView,
  },
  {
    path: '/unauthorized',
    name: 'unauthorized',
    component: UnauthorizedView
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
})

router.beforeEach((to, from, next) => {
  if (!to.query.lang && from.query.lang) {
    next({ name: to.name, query: { ...to.query, lang: from.query.lang } })
  } else {
    next()
  }
})

export default router
