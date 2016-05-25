#!/usr/local/bin/bash

PATH=/nfs/spectre/a4/solaris8/common/j2sdk1_3_1_02/bin:"$PATH"
export PATH

JAVA_HOME=/nfs/spectre/a4/solaris8/common/j2sdk1_3_1_02
export JAVA_HOME

current=`pwd`
CLASSPATH="$CLASSPATH":${current}:${current}/build/classes:${current}/build/testcases:${current}/src/testcases:${current}/src/etc/testcases
for i in ${current}/lib/*.jar
do
    CLASSPATH=$CLASSPATH:$i
done
export CLASSPATH

$JAVA_HOME/bin/java -mx64m -classpath ${CLASSPATH}:${JAVA_HOME}/lib/classes.zip -Dant.home=bootstrap -Dbuild.tests=${current}/build/testcases -Dtests-classpath.value=${CLASSPATH} $* AntTestSuite
