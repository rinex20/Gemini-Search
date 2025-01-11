# 使用官方的 Node.js 镜像作为基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json 文件
COPY package*.json ./

# 安装依赖
RUN npm install

RUN npm install node-fetch

# 复制项目文件
COPY . .

# 暴露应用运行的端口
EXPOSE 3000

# 启动应用
CMD ["npm", "run", "dev"]
