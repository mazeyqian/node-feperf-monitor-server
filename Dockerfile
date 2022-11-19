# 基于 node 镜像
FROM node:14

# 复制宿主机的 start.sh 到 容器 /etc/start.sh
ADD ./build/start.sh /etc/start.sh

# 设置初始命令执行目录
RUN mkdir /web
WORKDIR /web

# 利用缓存
# ADD package.json /web
# ADD package-lock.json /web
# RUN npm ci

COPY . /web

EXPOSE 7414

CMD ["/bin/bash", "/etc/start.sh"]
