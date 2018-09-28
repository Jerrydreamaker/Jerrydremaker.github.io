<property>
<!--namenode 的文件目录，手动创建，用户权限组为  hdfs:hdfs -->
<name>dfs.datanode.data.dir</name>
<value>
file:///data/volume_a/,
</value>
</property>
<property>
<name>dfs.permissions.superusergroup</name>
<value>root</value><!--设置拥有权限的用户-->
</property>

<property>
<!--是否开启认证-->
<name>dfs.permissions</name>
<value>false</value>
</property>

<property>
<!--namenode 的文件目录，手动创建，用户权限组为  hdfs:hdfs -->
<name>dfs.namenode.name.dir</name>
<value>file:///data/volume_b</value>
</property>

<property>
<!--自定义的服务名称  -->
<name>dfs.nameservices</name>
<value>mycluster</value>
</property>

<property>
<!--两个 NameNode 的别名  -->
<name>dfs.ha.namenodes.mycluster</name>
<value>nn1,nn2</value>
</property>

<property>
<!--分别配置两个 NameNode 的 IP -->
<name>dfs.namenode.rpc-address.mycluster.nn2</name>
<value>namenode2:8020</value>
</property>

<property>
<name>dfs.namenode.rpc-address.mycluster.nn1</name>
<value>namenode1:8020</value>
</property>

<property>
<name>dfs.namenode.http-address.mycluster.nn1</name>
<value>namenode1:50070</value>
</property>

<property>
<name>dfs.namenode.http-address.mycluster.nn2</name>
<value>namenode2:50070</value>
</property>

<property>
<!--分别配置 JournalNode 的 IP 便于 namenode 通信  -->
<name>dfs.namenode.shared.edits.dir</name>
<value>qjournal://journalnode1:8485;journalnode2:8485;journalnode3:8485/mycluster</value>
</property>

<property>
<name>dfs.client.failover.proxy.provider.mycluster</name>
<value>org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider</value>
</property>

<property>
<!--自动切换时使用的函数或脚本  -->
<name>dfs.ha.fencing.methods</name>
<value>
sshfence
shell(/bin/true)
</value>
</property>

<property>
<!--密钥文件，所使用用户的密钥  -->
<name>dfs.ha.fencing.ssh.private-key-files</name>
<value>/root/.ssh/id_rsa</value>
</property>

<property>
<name>dfs.ha.fencing.ssh.connect-timeout</name>
<value>30000</value>
</property>

<property>
<!--手动创建，修改用户组 hdfs:hdfs-->
<name>dfs.journalnode.edits.dir</name>
<value>/journal/data</value>
</property>

<property>
<!--开启高可用-->
<name>dfs.ha.automatic-failover.enabled</name>
<value>true</value>
</property>

<property>
<name>dfs.block.size</name>
<value>67108864</value>
<description>The default block size for new files.</description>
</property>
