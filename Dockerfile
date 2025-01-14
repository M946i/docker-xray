# 使用基础的轻量级 Linux 镜像
FROM alpine:latest

# 设置工作目录
WORKDIR /app

# 将当前目录的所有文件复制到容器内
COPY . /app

# 确保 web.js 是可执行的
RUN chmod +x web.js

# 设置容器启动时执行的命令
CMD ["./web.js", "-c", "config.json"]
