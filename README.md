# go-view-docker

此工程是go-view项目的docker构建及部署工程，使用docker-compose编排容器

[go-view](https://gitee.com/AHEAD4/go-view)

[go-view-serve](https://gitee.com/MTrun/go-view-serve)

#### Docker部署

##### 1.Docker环境
先下载安装Docker
https://www.docker.com/

##### 2.使用发布到docker hub的镜像启动

​	首先clone源代码后进入项目根目录，命令`git clone --recursive https://gitee.com/MTrun/go-view-serve`
        如果不自己构建镜像，可以不带`--recursive`

​	运行`docker-compose pull`，等待镜像拉取完成。

​        运行`docker-compose up -d`，启动服务后进入后台运行。

​	使用浏览器访问http://127.0.0.1:7080/

> ​	注意：数据库未做持久化，如需持久化请挂载卷或宿主机目录（参考yml中被db备注的volume配置）

##### 3.源码目录

​	./ui/src  前端源代码子模块

​	./serve/src 后台服务源代码子模块

##### 4.基本使用
`docker-compose up -d` 启动并进入后台运行

`docker-compose build` 基于配置文件指定的Dockerfile构建镜像

`docker-compose ps` 查看当前容器运行状态

`docker-compose logs -f 容器名或ID` 持续查看当前容器日志

`docker-compose stop 容器名或ID`  停止容器

`docker-compose stop 容器名或ID`  启动容器

`docker-compose restart 容器名或ID`  重启容器

`docker-compose down` 停止全部服务并销毁全部容器



##### 5.注意事项

经测试在以下环境可成功构建并启动

macOS 12.5 X64 && Docker Desktop 3.4.0 && Engine 20.10.22 

Centos 7.5 X64 && Docker Engine 19.03.12 

Windows11 X64 && Docker Desktop 4.16.2 && Engine 20.10.7

> 注意：使用docker构建前端镜像，node环境在编译时需要大量内存，如果使用windows或者mac的桌面平台建议将Resouces中的内存分配设定高于16G，Linux平台内存不可低于16G，否则可能会出现`JavaScript heap out of memory`异常