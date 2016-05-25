#!/usr/local/bin/bash

PATH=/nfs/spectre/a4/solaris8/common/j2sdk1_3_1_02/bin:"$PATH"
export PATH

JAVA_HOME=/nfs/spectre/a4/solaris8/common/j2sdk1_3_1_02
export JAVA_HOME

CLASSPATH=.:/nfs/spectre/u5/aristot/subjects/lib:./build/classes:./build/testcases:./src/testcases:./src/etc/testcases:/nfs/spectre/u5/aristot/subjects/lib/BCEL

for i in ./lib/*.jar
do
    CLASSPATH=$i:$CLASSPATH
done
export CLASSPATH

java -Dbuild.tests=build/testcases junit.textui.SelectiveTestRunner -names ${1} | sed -e 's/^[0-9]*:[  ]*//' -e 's/\.[^.]*$//' | sort -u |
(
while read LINE
do
   DLIST="${DLIST} ${LINE}"
done
java -mx256m -cp ${CLASSPATH}:${JAVA_HOME}/lib/classes.zip -Dant.home=bootstrap -Dbuild.tests=build/testcases -Dtests-classpath.value=${CLASSPATH} listclass -nocontents -dependencies -recurse ${DLIST} -exclude java. javax. sun.
) |
sort -u

#$JAVA_HOME/bin/java -Dbuild.tests=build/testcases $* AntTestSuite
