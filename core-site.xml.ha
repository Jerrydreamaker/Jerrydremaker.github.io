<property>
<!--自定义的文件名-->
<name>fs.defaultFS</name>
<value>hdfs://mycluster</value>
</property>

<property>
<!--配置 zookeeper 的 IP-->
<name>ha.zookeeper.quorum</name>
<value>zookeeper1:2181,zookeeper2:2181,zookeeper3:2181</value>
</property>

<property>
<name>hadoop.tmp.dir</name>
<value>/tmp/hadoop-${user.name}</value>
</property>

<!--auth-->
<!--相关权限设置-->
<property>
<name>hadoop.proxyuser.mapred.groups</name>
<value>*</value>
</property>

<property>
<name>hadoop.proxyuser.mapred.hosts</name>
<value>*</value>
</property>

<property>
<name>hadoop.proxyuser.mapred.users</name>
<value>*</value>
</property>

<property>
<name>hadoop.proxyuser.nfsserver.groups</name>
<value>*</value>
</property>

<property>
<name>hadoop.proxyuser.nfsserver.hosts</name>
<value>*</value>
</property>

<property>
<name>hadoop.proxyuser.nfsserver.users</name>
<value>*</value>
</property>

<property>
<name>hadoop.proxyuser.hdfs.groups</name>
<value>*</value>
</property>

<property>
<name>hadoop.proxyuser.hdfs.hosts</name>
<value>*</value>
</property>

<property>
<name>hadoop.proxyuser.hdfs.users</name>
<value>*</value>
</property>
