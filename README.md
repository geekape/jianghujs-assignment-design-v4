# jianghu_demo_advanced

## Start

1. npm install
   ```bash
   npm i
   ```
2. 复制 `config.local.example.js` 为 `config.local.js`
3. 并且修改数据库配置为自己的数据库, 例如：
   ```bash
   host: '127.0.0.1',
   port: 3306,
   user: 'root',
   password: '123456',
   database: 'jianghu_demo_assignment'
   ```
4. 启动 npm run dev

## 数据库

```sql
# 数据库初始化
create database `jianghu_demo_assignment` default character set utf8mb4 collate utf8mb4_bin;
use jianghu_demo_assignment;
# 运行 sql/_init_.sql 文件
```

## 端口

7007

## 测试账号 & 测试环境

- admin/123456

## jianghu_demo_assignment

1. 操作手册 @雪园 https://docsify.js.org/#/zh-cn/quickstart
2. 布置演示 ✅
3. 做作业演示 ✅
4. 作业批改 ❌
