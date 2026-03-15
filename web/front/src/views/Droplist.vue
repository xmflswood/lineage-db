<template>
  <div class="page-container">
    <h2 class="page-title">掉落查询</h2>
    
    <div class="search-box">
      <el-input
        v-model="keyword"
        placeholder="输入物品名称或物品ID搜索..."
        @keyup.enter="search"
        clearable
        style="max-width: 400px"
      >
        <template #append>
          <el-button @click="search" :loading="loading">搜索</el-button>
        </template>
      </el-input>
    </div>

    <div v-if="loading" class="loading-box">
      <el-skeleton :rows="5" animated />
    </div>

    <div v-else-if="results.length > 0">
      <!-- PC端表格 -->
      <el-table :data="results" class="pc-table" @row-click="showDetail">
        <el-table-column prop="item_name" label="物品名称" min-width="150">
          <template #default="{ row }">
            <span class="item-name">{{ row.item_name }}</span>
          </template>
        </el-table-column>
        <el-table-column prop="monster_name" label="掉落怪物" min-width="150">
          <template #default="{ row }">
            {{ row.monster_name || `【未知-id-${row.mobId}】` }}
          </template>
        </el-table-column>
        <el-table-column prop="chance" label="掉率" width="100">
          <template #default="{ row }">
            {{ (row.chance / 10000).toFixed(2) }}%
          </template>
        </el-table-column>
      </el-table>

      <!-- 移动端卡片 -->
      <div class="mobile-cards">
        <div 
          v-for="item in results" 
          :key="`${item.mobId}-${item.itemId}`" 
          class="card"
          @click="showDetail(item)"
        >
          <div class="card-header">
            <span class="item-name">{{ item.item_name }}</span>
            <el-tag size="small">{{ (item.chance / 10000).toFixed(2) }}%</el-tag>
          </div>
          <div class="card-body">
            <p><strong>掉落怪物:</strong> {{ item.monster_name || `【未知-id-${item.mobId}】` }}</p>
          </div>
        </div>
      </div>

      <!-- 分页 -->
      <div class="pagination-box" v-if="total > pageSize">
        <el-pagination
          :current-page="currentPage"
          :page-size="pageSize"
          :total="total"
          layout="prev, pager, next"
          @current-change="handlePageChange"
        />
      </div>
    </div>

    <el-empty v-else-if="searched" description="未找到相关掉落信息" />

    <!-- 详情弹窗 -->
    <el-dialog v-model="detailVisible" title="详情" width="500px">
      <div v-if="currentItem" class="detail-content">
        <p><strong>物品ID:</strong> {{ currentItem.itemId }}</p>
        <p><strong>物品名称:</strong> {{ currentItem.item_name }}</p>
        <p><strong>物品类型:</strong> {{ currentItem.item_type }}</p>
        <p><strong>掉落怪物:</strong> {{ currentItem.monster_name || `【未知-id-${currentItem.mobId}】` }}</p>
        <p><strong>掉率:</strong> {{ (currentItem.chance / 10000).toFixed(2) }}%</p>
      </div>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import api from '../api'

const keyword = ref('')
const loading = ref(false)
const searched = ref(false)
const results = ref([])
const detailVisible = ref(false)
const currentItem = ref(null)
const currentPage = ref(1)
const pageSize = ref(20)
const total = ref(0)

const search = async () => {
  if (!keyword.value.trim()) return
  
  currentPage.value = 1
  loading.value = true
  searched.value = true
  
  try {
    const res = await api.getDroplistByItemName(keyword.value.trim(), 1, pageSize.value)
    if (res.data.success) {
      results.value = res.data.data
      total.value = res.data.total || res.data.data.length
    }
  } catch (error) {
    console.error('搜索失败:', error)
  } finally {
    loading.value = false
  }
}

const handlePageChange = async (page) => {
  currentPage.value = page
  loading.value = true
  
  try {
    const res = await api.getDroplistByItemName(keyword.value.trim(), page, pageSize.value)
    if (res.data.success) {
      results.value = res.data.data
    }
  } catch (error) {
    console.error('加载失败:', error)
  } finally {
    loading.value = false
  }
}

const showDetail = (item) => {
  currentItem.value = item
  detailVisible.value = true
}
</script>

<style scoped>
.page-container {
  padding: 20px;
}

.page-title {
  margin-bottom: 20px;
  color: #303133;
}

.search-box {
  margin-bottom: 20px;
}

.loading-box {
  padding: 20px;
}

.item-name {
  color: #409eff;
  cursor: pointer;
}

.pc-table {
  display: table;
}

.mobile-cards {
  display: none;
}

.card {
  background: #fff;
  border-radius: 8px;
  padding: 15px;
  margin-bottom: 10px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  cursor: pointer;
}

.card-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 10px;
}

.card-body p {
  margin: 5px 0;
  font-size: 14px;
  color: #606266;
}

.pagination-box {
  margin-top: 20px;
  display: flex;
  justify-content: center;
}

.detail-content p {
  margin: 10px 0;
  font-size: 15px;
}

@media (max-width: 768px) {
  .pc-table {
    display: none;
  }
  
  .mobile-cards {
    display: block;
  }
}
</style>