# Version: 0.0.1

# 指定基础镜像
FROM airdock/oracle-jdk

# 指定镜像的作者、联系方式
MAINTAINER HuHaibin "haib.hu@haihangyun.com"

# 安装VI
#RUN apt-get update \
#  && apt-get install -y vim

WORKDIR /root/browser

CMD ["java", "-jar", "browser-node-reader.jar"]

#end
