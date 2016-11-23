# Version: 0.0.1

# 指定基础镜像
FROM ubuntu:16.10

# 指定镜像的作者、联系方式
MAINTAINER HuHaibin "haib.hu@haihangyun.com"

# 安装VI
RUN apt-get update \
  && apt-get install -y vim

# 安装Tomcat
COPY apache-tomcat-9.0.0.M1.tar /apache-tomcat-9.0.0.M1.tar
RUN tar -xvf /apache-tomcat-9.0.0.M1.tar \
  && mv apache-tomcat-9.0.0.M1 /usr/local/tomcat-9.0 \
  && chmod -R 755 /usr/local/tomcat-9.0 \
  && rm /apache-tomcat-9.0.0.M1.tar

# 开放端口
EXPOSE 8080 9000

CMD ["/usr/local/tomcat-9.0/bin/startup.sh"]

#end
