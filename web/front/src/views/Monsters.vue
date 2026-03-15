<template>
  <div class="page-container">
    <h2 class="page-title">怪物查询</h2>
    
    <div class="search-box">
      <el-input
        v-model="keyword"
        placeholder="输入怪物名称或怪物ID搜索..."
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
        <el-table-column prop="name" label="名称" min-width="150">
          <template #default="{ row }">
            <span class="item-name">{{ row.name }}</span>
          </template>
        </el-table-column>
      </el-table>

      <!-- 移动端卡片 -->
      <div class="mobile-cards">
        <div 
          v-for="item in results" 
          :key="item.npcid" 
          class="card"
          @click="showDetail(item)"
        >
          <div class="card-header">
            <span class="item-name">{{ item.name }}</span>
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

    <el-empty v-else-if="searched" description="未找到相关怪物" />

    <!-- 详情弹窗 -->
    <el-dialog v-model="detailVisible" title="怪物详情" width="700px">
      <div v-if="currentItem" class="detail-content">
        <el-descriptions :column="2" border>
          <el-descriptions-item label="名称">{{ currentItem.name }}</el-descriptions-item>
          <el-descriptions-item label="等级">{{ currentItem.lvl }}</el-descriptions-item>
          <el-descriptions-item label="体型">{{ currentItem.size }}</el-descriptions-item>
          <el-descriptions-item label="HP">{{ currentItem.hp }}</el-descriptions-item>
          <el-descriptions-item label="MP">{{ currentItem.mp }}</el-descriptions-item>
          <el-descriptions-item label="经验">{{ currentItem.exp }}</el-descriptions-item>
          <el-descriptions-item label="正义值">{{ currentItem.lawful }}</el-descriptions-item>
        </el-descriptions>

        <!-- 掉落列表 -->
        <div v-if="dropLoading" class="drop-loading">
          <el-skeleton :rows="3" animated />
        </div>
        <div v-else-if="dropList.length > 0" class="drop-section">
          <h4>掉落物品</h4>
          <el-table :data="dropList" size="small" max-height="300">
            <el-table-column prop="itemId" label="物品ID" width="100" />
            <el-table-column prop="item_name" label="物品名称" min-width="150" />
            <el-table-column prop="item_type" label="类型" width="100" />
            <el-table-column label="掉率" width="100">
              <template #default="{ row }">
                {{ (row.chance / 10000).toFixed(2) }}%
              </template>
            </el-table-column>
          </el-table>
        </div>
        <div v-else-if="!dropLoading" class="no-drop">
          <p>该怪物没有掉落物品</p>
        </div>
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
const dropList = ref([])
const dropLoading = ref(false)

const search = async () => {
  if (!keyword.value.trim()) return
  
  currentPage.value = 1
  loading.value = true
  searched.value = true
  
  try {
    const res = await api.getMonsters(keyword.value.trim(), 1, pageSize.value)
    if (res.data.success) {
      results.value = res.data.data
      total.value = res.data.total
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
    const res = await api.getMonsters(keyword.value.trim(), page, pageSize.value)
    if (res.data.success) {
      results.value = res.data.data
    }
  } catch (error) {
    console.error('加载失败:', error)
  } finally {
    loading.value = false
  }
}

const showDetail = async (item) => {
  currentItem.value = item
  detailVisible.value = true
  dropList.value = []
  dropLoading.value = true
  
  try {
    const res = await api.getDroplistByMobId(item.npcid)
    if (res.data.success) {
      dropList.value = res.data.data
    }
  } catch (error) {
    console.error('获取掉落失败:', error)
  } finally {
    dropLoading.value = false
  }
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
}

.pagination-box {
  margin-top: 20px;
  display: flex;
  justify-content: center;
}

.drop-section {
  margin-top: 20px;
}

.drop-section h4 {
  margin-bottom: 10px;
  color: #303133;
}

.drop-loading {
  margin-top: 20px;
}

.no-drop {
  margin-top: 20px;
  text-align: center;
  color: #909399;
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