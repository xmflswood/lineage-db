import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  {
    path: '/',
    redirect: '/droplist'
  },
  {
    path: '/droplist',
    name: 'Droplist',
    component: () => import('../views/Droplist.vue')
  },
  {
    path: '/weapons',
    name: 'Weapons',
    component: () => import('../views/Weapons.vue')
  },
  {
    path: '/armors',
    name: 'Armors',
    component: () => import('../views/Armors.vue')
  },
  {
    path: '/monsters',
    name: 'Monsters',
    component: () => import('../views/Monsters.vue')
  },
  {
    path: '/etcitems',
    name: 'Etcitems',
    component: () => import('../views/Etcitems.vue')
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router