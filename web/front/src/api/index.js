import axios from 'axios'

const api = axios.create({
  baseURL: '/api',
  timeout: 10000
})

export default {
  // 武器查询
  getWeapons(keyword, page = 1, pageSize = 20) {
    const offset = (page - 1) * pageSize
    return api.get(`/weapons?keyword=${encodeURIComponent(keyword)}&limit=${pageSize}&offset=${offset}`)
  },

  // 护甲查询
  getArmors(keyword, page = 1, pageSize = 20) {
    const offset = (page - 1) * pageSize
    return api.get(`/armors?keyword=${encodeURIComponent(keyword)}&limit=${pageSize}&offset=${offset}`)
  },

  // 怪物查询
  getMonsters(keyword, page = 1, pageSize = 20) {
    const offset = (page - 1) * pageSize
    return api.get(`/monsters?keyword=${encodeURIComponent(keyword)}&limit=${pageSize}&offset=${offset}`)
  },

  // 消耗品查询
  getEtcitems(keyword, page = 1, pageSize = 20) {
    const offset = (page - 1) * pageSize
    return api.get(`/etcitems?keyword=${encodeURIComponent(keyword)}&limit=${pageSize}&offset=${offset}`)
  },

  // 掉落查询 - 按物品名称
  getDroplistByItemName(keyword, page = 1, pageSize = 20) {
    const offset = (page - 1) * pageSize
    return api.get(`/droplist/by-item-name?keyword=${encodeURIComponent(keyword)}&limit=${pageSize}&offset=${offset}`)
  },

  // 掉落查询 - 按怪物ID
  getDroplistByMobId(mobId) {
    return api.get(`/droplist/by-mob?mobId=${mobId}`)
  },

  // 掉落查询 - 按物品ID
  getDroplistByItemId(itemId) {
    return api.get(`/droplist/by-item?itemId=${itemId}`)
  }
}