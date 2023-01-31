FROM maven:3.8.5-openjdk-8 as builder
VOLUME m2repo:/root/.m2
COPY settings.xml /
COPY src /serve-src
# 拉取代码并打包
RUN set -xe; \
	cd /serve-src; \
	mvn -s /settings.xml -DfinalName=app package;
RUN cd /serve-src/target ; for file in $(find . -name "*.war"); do cp $file ./app.war; break; done ;

# jdk
FROM openjdk:8-jdk-alpine as server
# 将打包结果复制到centos
COPY --from=builder /serve-src/target/app.war /app.war

EXPOSE 8080
ENTRYPOINT java -Duser.timezone=Asia/Shanghai -jar app.war