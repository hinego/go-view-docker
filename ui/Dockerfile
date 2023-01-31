# 使用pnpm环境
FROM ianwalter/pnpm:v1.4.0 as builder
# 将环境变量文件复制到镜像，以便在后续构建中替换vite的.env文件
COPY vite-env /
COPY src /ui-src
# 拉取代码并打包
RUN set -xe; \
	pnpm config set registry=https://registry.npm.taobao.org ; \
	cd /ui-src ; \
	cp /vite-env ./.env; \
	pnpm install; \
	pnpm run build;
# nginx
FROM nginx:stable-alpine as server
# 将打包结果复制到nginx
COPY --from=builder /ui-src/dist /usr/share/nginx/html

# COPY start.sh /
# 设置入口并禁用缺省配置文件
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.disabled;


EXPOSE 80
ENTRYPOINT nginx  -g "daemon off;"

