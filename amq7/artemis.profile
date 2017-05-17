# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

ARTEMIS_HOME='/home/benchuser/runtime/A-MQ7-7.0.0.ER18-redhat-1'
ARTEMIS_INSTANCE='/home/benchuser/runtime/specjms-amq7-7.0.0.ER18-redhat-1'

# Cluster Properties: Used to pass arguments to ActiveMQ Artemis which can be referenced in broker.xml
#ARTEMIS_CLUSTER_PROPS="-Dactivemq.remoting.default.port=61617 -Dactivemq.remoting.amqp.port=5673 -Dactivemq.remoting.stomp.port=61614 -Dactivemq.remoting.hornetq.port=5446"


# Java Opts
JAVA_ARGS="-XX:+UseParallelGC -XX:+AggressiveOpts -XX:+UseFastAccessorMethods -Xms18g -Xmx18g -Dhawtio.realm=activemq -Dhawtio.role=amq -Dhawtio.rolePrincipalClasses=org.apache.activemq.artemis.spi.core.security.jaas.RolePrincipal"
JAVA_ARGS=" ${JAVA_ARGS} -XX:+UseLargePages -verbose:gc -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintGCDetails -XX:-HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp/ -Xloggc:/tmp/specjms.amq7.%t.%p.gclog"
#
# There might be options that you only want to enable on specifc commands, like setting a JMX port
# See https://issues.apache.org/jira/browse/ARTEMIS-318
#if [ "$1" = "run" ]; then
#  JAVA_ARGS="$JAVA_ARGS -Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote.port=1099 -Dcom.sun.management.jmxremote.rmi.port=1098 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
#fi

# Debug args: Uncomment to enable debug
#DEBUG_ARGS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005"
