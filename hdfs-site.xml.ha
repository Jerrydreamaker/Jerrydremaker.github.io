<property>
<!--namenode ���ļ�Ŀ¼���ֶ��������û�Ȩ����Ϊ  hdfs:hdfs -->
<name>dfs.datanode.data.dir</name>
<value>
file:///data/volume_a/,
</value>
</property>
<property>
<name>dfs.permissions.superusergroup</name>
<value>root</value><!--����ӵ��Ȩ�޵��û�-->
</property>

<property>
<!--�Ƿ�����֤-->
<name>dfs.permissions</name>
<value>false</value>
</property>

<property>
<!--namenode ���ļ�Ŀ¼���ֶ��������û�Ȩ����Ϊ  hdfs:hdfs -->
<name>dfs.namenode.name.dir</name>
<value>file:///data/volume_b</value>
</property>

<property>
<!--�Զ���ķ�������  -->
<name>dfs.nameservices</name>
<value>mycluster</value>
</property>

<property>
<!--���� NameNode �ı���  -->
<name>dfs.ha.namenodes.mycluster</name>
<value>nn1,nn2</value>
</property>

<property>
<!--�ֱ��������� NameNode �� IP -->
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
<!--�ֱ����� JournalNode �� IP ���� namenode ͨ��  -->
<name>dfs.namenode.shared.edits.dir</name>
<value>qjournal://journalnode1:8485;journalnode2:8485;journalnode3:8485/mycluster</value>
</property>

<property>
<name>dfs.client.failover.proxy.provider.mycluster</name>
<value>org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider</value>
</property>

<property>
<!--�Զ��л�ʱʹ�õĺ�����ű�  -->
<name>dfs.ha.fencing.methods</name>
<value>
sshfence
shell(/bin/true)
</value>
</property>

<property>
<!--��Կ�ļ�����ʹ���û�����Կ  -->
<name>dfs.ha.fencing.ssh.private-key-files</name>
<value>/root/.ssh/id_rsa</value>
</property>

<property>
<name>dfs.ha.fencing.ssh.connect-timeout</name>
<value>30000</value>
</property>

<property>
<!--�ֶ��������޸��û��� hdfs:hdfs-->
<name>dfs.journalnode.edits.dir</name>
<value>/journal/data</value>
</property>

<property>
<!--�����߿���-->
<name>dfs.ha.automatic-failover.enabled</name>
<value>true</value>
</property>

<property>
<name>dfs.block.size</name>
<value>67108864</value>
<description>The default block size for new files.</description>
</property>