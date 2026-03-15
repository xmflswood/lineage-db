<template>
  <el-container class="app-container">
    <el-header class="app-header">
      <div class="header-content">
        <h1 class="logo" @click="$router.push('/')">天堂数据库</h1>
        <el-menu
          :default-active="$route.path"
          mode="horizontal"
          :ellipsis="false"
          router
          class="nav-menu"
        >
          <el-menu-item index="/droplist">掉落查询</el-menu-item>
          <el-menu-item index="/weapons">武器查询</el-menu-item>
          <el-menu-item index="/armors">护甲查询</el-menu-item>
          <el-menu-item index="/monsters">怪物查询</el-menu-item>
          <el-menu-item index="/etcitems">消耗品查询</el-menu-item>
        </el-menu>
      </div>
    </el-header>
    <el-main class="app-main">
      <router-view />
    </el-main>
  </el-container>
</template>

<script setup>
</script>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  background: #f5f7fa;
}

.app-container {
  min-height: 100vh;
}

.app-header {
  background: #fff;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  padding: 0 20px;
  height: auto !important;
}

.header-content {
  max-width: 1400px;
  margin: 0 auto;
  display: flex;
  align-items: center;
  flex-wrap: wrap;
}

.logo {
  font-size: 24px;
  color: #409eff;
  cursor: pointer;
  margin-right: 40px;
  white-space: nowrap;
}

.nav-menu {
  flex: 1;
  border-bottom: none !important;
}

.app-main {
  max-width: 1400px;
  margin: 0 auto;
  padding: 20px;
  width: 100%;
}

/* 移动端适配 */
@media (max-width: 768px) {
  .header-content {
    flex-direction: column;
    padding: 10px 0;
  }
  
  .logo {
    margin-right: 0;
    margin-bottom: 10px;
    font-size: 20px;
  }
  
  .nav-menu {
    width: 100%;
    justify-content: center;
  }
  
  .el-menu-item {
    padding: 0 10px !important;
    font-size: 14px;
  }
}
</style>