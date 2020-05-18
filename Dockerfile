# Version 1.0

FROM registry.cn-hangzhou.aliyuncs.com/vipet/centos8:base-20200518	

MAINTAINER chenzeyu_tapin "chenzeyu@fspet.cn"

# 设置root权限
USER root

# 执行操作
RUN yum install -y openssl openssh-server
RUN service sshd start

ENTRYPOINT ["/bin/bash"]

