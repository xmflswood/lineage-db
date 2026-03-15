<template>
  <div class="page-container">
    <h2 class="page-title">护甲查询</h2>
    
    <div class="search-box">
      <el-input
        v-model="keyword"
        placeholder="输入护甲名称或护甲ID搜索..."
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
          :key="item.item_id" 
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

    <el-empty v-else-if="searched" description="未找到相关护甲" />

    <!-- 详情弹窗 -->
    <el-dialog v-model="detailVisible" title="护甲详情" width="600px">
      <div v-if="currentItem" class="detail-content">
        <el-descriptions :column="2" border>
          <el-descriptions-item label="名称">{{ currentItem.name }}</el-descriptions-item>
          <el-descriptions-item label="类型">{{ currentItem.armorType }}</el-descriptions-item>
          <el-descriptions-item label="材质">{{ currentItem.materialType }}</el-descriptions-item>
          <el-descriptions-item label="重量">{{ currentItem.weight }}</el-descriptions-item>
          <el-descriptions-item label="AC">{{ currentItem.ac }}</el-descriptions-item>
          <el-descriptions-item label="安全强化">{{ currentItem.safenchant }}</el-descriptions-item>
          <el-descriptions-item label="等级限制">{{ currentItem.min_lvl || '无' }}</el-descriptions-item>
          <el-descriptions-item label="祝福">{{ currentItem.bless === 0 ? '是' : currentItem.bless === 2 ? '诅咒' : '否' }}</el-descriptions-item>
        </el-descriptions>
        <div v-if="currentItem.attributes && currentItem.attributes.length > 0" class="attributes-box">
          <h4>附加属性</h4>
          <el-tag v-for="attr in currentItem.attributes" :key="attr" class="attr-tag">{{ attr }}</el-tag>
        </div>
        <div v-if="currentItem.classes && currentItem.classes.length > 0" class="classes-box">
          <h4>适用职业</h4>
          <el-tag v-for="cls in currentItem.classes" :key="cls" type="info" class="class-tag">{{ cls }}</el-tag>
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

const search = async () => {
  if (!keyword.value.trim()) return
  
  currentPage.value = 1
  loading.value = true
  searched.value = true
  
  try {
    const res = await api.getArmors(keyword.value.trim(), 1, pageSize.value)
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
    const res = await api.getArmors(keyword.value.trim(), page, pageSize.value)
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
}

.pagination-box {
  margin-top: 20px;
  display: flex;
  justify-content: center;
}

.attributes-box, .classes-box {
  margin-top: 15px;
}

.attributes-box h4, .classes-box h4 {
  margin-bottom: 10px;
  color: #303133;
}

.attr-tag, .class-tag {
  margin-right: 8px;
  margin-bottom: 8px;
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