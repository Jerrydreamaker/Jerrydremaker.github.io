<!--开启高可用-->
<property>
<name>yarn.resourcemanager.ha.enabled</name>
<value>true</value>
</property>

<property>
<name>yarn.resourcemanager.cluster-id</name>
<value>cluster1</value>
</property>

<property>
<name>yarn.resourcemanager.ha.rm-ids</name>
<value>rm1,rm2</value>
</property>

<property>
<name>yarn.resourcemanager.hostname.rm1</name>
<value>master</value>
</property>

<property>
<name>yarn.resourcemanager.hostname.rm2</name>
<value>grafana</value>
</property>

<property>
<name>yarn.resourcemanager.webapp.address.rm1</name>
<value> resourcemanager1:8088</value>
</property>

<property>
<name>yarn.resourcemanager.webapp.address.rm2</name>
<value>resourcemanager2:8088</value>
</property>

<property>
<name>yarn.resourcemanager.zk-address</name>
<value>zookeeper1:2181,zookeeper2:2181,zookeeper3:2181</value>
</property>

<property>
<name>yarn.nodemanager.aux-services</name>
<value>mapreduce_shuffle</value>
</property>

<property>
<name>yarn.nodemanager.aux-services.mapreduce.shuffle.class</name>
<value>org.apache.hadoop.mapred.ShuffleHandler</value>
</property>
