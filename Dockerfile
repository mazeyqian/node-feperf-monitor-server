# 基于 node 镜像
FROM node:16

# 复制宿主机的 start.sh 到 容器 /etc/start.sh
ADD ./build/start.sh /etc/start.sh

# 设置初始命令执行目录
RUN mkdir /www
WORKDIR /www

# 利用缓存
ADD package.json /www
ADD package-lock.json /www
RUN npm ci

COPY . /www

EXPOSE 7414

CMD ["/bin/bash", "/etc/start.sh"]
