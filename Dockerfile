# 基础镜像
FROM centos
# 作者
MAINTAINER wlj
# 安装 vim
RUN yum install -y vim
# 查看 ip 命令
RUN yum install -y net-tools
# 安装 sshd 服务端
RUN yum install -y openssh-server 
# 安装 sshd 客户端
RUN yum install -y openssh-clients
# 将 root 用户密码改为 123456
RUN echo 'root:123456' |chpasswd
RUN ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key -N '' 
RUN mkdir /var/run/sshd
# 添加 cdh 源
ADD cdh.repo /etc/yum.repos.d 
# 安装 jdk
ADD jdk*.tar.gz  /opt/
RUN mv /opt/jdk1* /opt/jdk
# 安装 NameNode
RUN yum install hadoop-hdfs-namenode -y
RUN yum install hadoop-hdfs-datanode -y
RUN yum install hbase-master -y
RUN yum install hbase-regionserver -y
RUN yum install zookeeper
ADD core-site.xml /etc/hadoop/conf
ADD hdfs-site.xml /etc/hadoop/conf
ADD hadoop-env.sh /etc/hadoop/conf
ADD hbase-site.xml /etc/hbase/conf
ADD profile /etc
# 安装 telegraf
ADD start /opt
ADD telegraf-1.2.1.x86_64.rpm /opt 
RUN yum localinstall /opt/telegraf-1.2.1.x86_64.rpm -y
ADD telegraf.conf /etc/telegraf
EXPOSE 22
CMD  ["/usr/sbin/sshd","-D"]
