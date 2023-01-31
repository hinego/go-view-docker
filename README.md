# go-view-docker

此工程是go-view项目的docker构建及部署工程，使用docker-compose编排容器

[go-view](https://gitee.com/AHEAD4/go-view)

[go-view-serve](https://gitee.com/MTrun/go-view-serve)

#### Docker部署

##### 1.Docker环境
先下载安装Docker
https://www.docker.com/

##### 2.源码目录

​	./ui/src  前端源代码子模块

​	./serve/src 后台服务源代码子模块

##### 4.基本使用
进入需要的版本目录

运行`docker-compose up -d`，完成等待镜像构建或拉取完成，随后将进入后台运行

运行`docker-compose ps`，查看当前容器运行状态。

运行`docker-compose logs -f 容器名或ID`，持续查看当前容器日志。

##### 5.注意事项

经测试在以下环境可成功构建并启动
macOS 12.5 X64 && Docker Desktop 3.4.0 && Engine 20.10.22 
Centos 7.5 X64 && Docker Engine 19.03.12 
Windows11 X64 && Docker Desktop 4.16.2 && Engine 20.10.7

使用docker构建前端镜像，node环境在编译时需要大量内存，如果使用windows或者mac的桌面平台建议将Resouces中的内存分配设定高于16G，Linux平台内存不可低于16G，否则可能会出现`JavaScript heap out of memory`异常

