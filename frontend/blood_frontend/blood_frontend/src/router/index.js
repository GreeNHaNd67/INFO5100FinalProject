import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: () => import('@/views/HeartRate.vue')
  },
  {
    path: '/high',
    name: 'high',
    component: () => import('../views/HighPressure.vue')
  },
  {
    path: '/low',
    name: 'low',
    component: () => import('../views/LowPressure.vue')
  },
  {
    path: '/overallTable',
    name: 'OverallTable',
    component: () => import('@/views/OverallTable.vue')
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})


export default router
