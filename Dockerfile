# 选择运行时基础镜像
FROM openanolis/anolisos:8.6

# 维护人员
MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

# 工作空间
WORKDIR /usr/local/dragonwell-11

# 添加镜像
ADD Alibaba_Dragonwell_Extended_11.0.17.13.8_x64_linux.tar.gz .
RUN mv dragonwell-11.0.17.13+8-GA/* .

# 设置环境变量
ENV JAVA_HOME=/usr/local/dragonwell-11
ENV JAVA_VERSION=11.0.17.13
ENV DRAGONWELL_VERSION=11.0.17.13-Extended
ENV PATH=/usr/local/dragonwell-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
