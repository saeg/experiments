#!/bin/sh
# Script that calls InSSTestRunner to get the instrumented requirements

#hsqldb

#${1} COVERAGE_TYPE
#${2} FAULT

#VERSION 1
###SETTINGS####
INSS_DIR=/home/higor/2013-experiments/scripts/hsqldb/v1
SCRIPT=inss_hsqldb_v1_${1}.sh
###SETTINGS####

echo ">>>>>>>>running tests"

${INSS_DIR}/${SCRIPT} 01 ClientConnectionTest org.hsqldb.ClientConnectionTest ${2}
${INSS_DIR}/${SCRIPT} 02 DatabaseURLTest org.hsqldb.DatabaseURLTest ${2}
${INSS_DIR}/${SCRIPT} 03 ScannerTest org.hsqldb.ScannerTest ${2}
${INSS_DIR}/${SCRIPT} 04 AuthBeanMultiplexerTest org.hsqldb.auth.AuthBeanMultiplexerTest ${2}
${INSS_DIR}/${SCRIPT} 05 AuthFunctionTest org.hsqldb.auth.AuthFunctionTest ${2}
${INSS_DIR}/${SCRIPT} 06 JaasAuthBeanTest org.hsqldb.auth.JaasAuthBeanTest ${2}
${INSS_DIR}/${SCRIPT} 07 SlaveAuthBeanTest org.hsqldb.auth.SlaveAuthBeanTest ${2}
${INSS_DIR}/${SCRIPT} 08 SqltoolRBTest org.hsqldb.cmdline.SqltoolRBTest ${2}
${INSS_DIR}/${SCRIPT} 09 JDBCArrayTest org.hsqldb.jdbc.JDBCArrayTest ${2}
${INSS_DIR}/${SCRIPT} 10 JDBCBlobClientTest org.hsqldb.jdbc.JDBCBlobClientTest ${2}
${INSS_DIR}/${SCRIPT} 11 JDBCBlobFileTest org.hsqldb.jdbc.JDBCBlobFileTest ${2}
${INSS_DIR}/${SCRIPT} 12 JDBCBlobTest org.hsqldb.jdbc.JDBCBlobTest ${2}
${INSS_DIR}/${SCRIPT} 13 JDBCCallableStatementTest org.hsqldb.jdbc.JDBCCallableStatementTest ${2}
${INSS_DIR}/${SCRIPT} 14 JDBCCallableStatementWhileClosedTest org.hsqldb.jdbc.JDBCCallableStatementWhileClosedTest ${2}
${INSS_DIR}/${SCRIPT} 15 JDBCClobClientTest org.hsqldb.jdbc.JDBCClobClientTest ${2}
${INSS_DIR}/${SCRIPT} 16 JDBCClobFileTest org.hsqldb.jdbc.JDBCClobFileTest ${2}
${INSS_DIR}/${SCRIPT} 17 JDBCClobTest org.hsqldb.jdbc.JDBCClobTest ${2}
${INSS_DIR}/${SCRIPT} 18 JDBCConnectionCreateStatementTest org.hsqldb.jdbc.JDBCConnectionCreateStatementTest ${2}
${INSS_DIR}/${SCRIPT} 19 JDBCConnectionPrepareCallTest org.hsqldb.jdbc.JDBCConnectionPrepareCallTest ${2}
${INSS_DIR}/${SCRIPT} 20 JDBCConnectionPrepareStatementTest org.hsqldb.jdbc.JDBCConnectionPrepareStatementTest ${2}
${INSS_DIR}/${SCRIPT} 21 JDBCConnectionTest org.hsqldb.jdbc.JDBCConnectionTest ${2}
${INSS_DIR}/${SCRIPT} 22 JDBCDataSourceFactoryTest org.hsqldb.jdbc.JDBCDataSourceFactoryTest ${2}
${INSS_DIR}/${SCRIPT} 23 JDBCDataSourceTest org.hsqldb.jdbc.JDBCDataSourceTest ${2}
#${INSS_DIR}/${SCRIPT} 24 JDBCDatabaseMetaDataSupportsConvertTest org.hsqldb.jdbc.JDBCDatabaseMetaDataSupportsConvertTest ${2}
${INSS_DIR}/${SCRIPT} 25 JDBCDatabaseMetaDataTest org.hsqldb.jdbc.JDBCDatabaseMetaDataTest ${2}
${INSS_DIR}/${SCRIPT} 26 JDBCDriverTest org.hsqldb.jdbc.JDBCDriverTest ${2}
${INSS_DIR}/${SCRIPT} 27 JDBCNClobTest org.hsqldb.jdbc.JDBCNClobTest ${2}
${INSS_DIR}/${SCRIPT} 28 JDBCParameterMetaDataTest org.hsqldb.jdbc.JDBCParameterMetaDataTest ${2}
${INSS_DIR}/${SCRIPT} 29 JDBCPreparedStatementTest org.hsqldb.jdbc.JDBCPreparedStatementTest ${2}
${INSS_DIR}/${SCRIPT} 30 JDBCResultSetMetaDataTest org.hsqldb.jdbc.JDBCResultSetMetaDataTest ${2}
${INSS_DIR}/${SCRIPT} 31 JDBCResultSetTest org.hsqldb.jdbc.JDBCResultSetTest ${2}
${INSS_DIR}/${SCRIPT} 32 JDBCRowIdTest org.hsqldb.jdbc.JDBCRowIdTest ${2}
${INSS_DIR}/${SCRIPT} 33 JDBCSQLXMLTest org.hsqldb.jdbc.JDBCSQLXMLTest ${2}
${INSS_DIR}/${SCRIPT} 34 JDBCSavepointTest org.hsqldb.jdbc.JDBCSavepointTest ${2}
${INSS_DIR}/${SCRIPT} 35 JDBCStatementTest org.hsqldb.jdbc.JDBCStatementTest ${2}
${INSS_DIR}/${SCRIPT} 36 ScriptedTest org.hsqldb.jdbc.ScriptedTest ${2}
${INSS_DIR}/${SCRIPT} 37 UtilTest org.hsqldb.jdbc.UtilTest ${2}
${INSS_DIR}/${SCRIPT} 38 JDBCPooledDataSourceTest org.hsqldb.jdbc.pool.JDBCPooledDataSourceTest ${2}
${INSS_DIR}/${SCRIPT} 39 JDBCXAConnectionTest org.hsqldb.jdbc.pool.JDBCXAConnectionTest ${2}
${INSS_DIR}/${SCRIPT} 40 JDBCXAConnectionWrapperTest org.hsqldb.jdbc.pool.JDBCXAConnectionWrapperTest ${2}
${INSS_DIR}/${SCRIPT} 41 JDBCXADataSourceTest org.hsqldb.jdbc.pool.JDBCXADataSourceTest ${2}
${INSS_DIR}/${SCRIPT} 42 JDBCXAResourceTest org.hsqldb.jdbc.pool.JDBCXAResourceTest ${2}
${INSS_DIR}/${SCRIPT} 43 JDBCXIDTest org.hsqldb.jdbc.pool.JDBCXIDTest ${2}
${INSS_DIR}/${SCRIPT} 44 BaseArrayTest org.hsqldb.jdbc.testbase.BaseArrayTest ${2}
${INSS_DIR}/${SCRIPT} 45 BaseBlobTest org.hsqldb.jdbc.testbase.BaseBlobTest ${2}
${INSS_DIR}/${SCRIPT} 46 BaseClobTest org.hsqldb.jdbc.testbase.BaseClobTest ${2}
${INSS_DIR}/${SCRIPT} 47 BaseDatabaseMetaDataSupportsConvertTest org.hsqldb.jdbc.testbase.BaseDatabaseMetaDataSupportsConvertTest ${2}
${INSS_DIR}/${SCRIPT} 48 BaseDriverTest org.hsqldb.jdbc.testbase.BaseDriverTest ${2}
${INSS_DIR}/${SCRIPT} 49 ArrayUtilTest org.hsqldb.lib.ArrayUtilTest ${2}
${INSS_DIR}/${SCRIPT} 50 HsqlArrayHeapTest org.hsqldb.lib.HsqlArrayHeapTest ${2}
${INSS_DIR}/${SCRIPT} 51 HsqlDequeTest org.hsqldb.lib.HsqlDequeTest ${2}
${INSS_DIR}/${SCRIPT} 52 HsqlTimerTest org.hsqldb.lib.HsqlTimerTest ${2}
${INSS_DIR}/${SCRIPT} 53 PIFGeneratorTest org.hsqldb.lib.tar.PIFGeneratorTest ${2}
${INSS_DIR}/${SCRIPT} 54 HsqlPropertiesTest org.hsqldb.persist.HsqlPropertiesTest ${2}
${INSS_DIR}/${SCRIPT} 55 OdbcPacketInputStreamTest org.hsqldb.server.OdbcPacketInputStreamTest ${2}
${INSS_DIR}/${SCRIPT} 56 OdbcPacketOutputStreamTest org.hsqldb.server.OdbcPacketOutputStreamTest ${2}
${INSS_DIR}/${SCRIPT} 57 BitMapTest org.hsqldb.store.BitMapTest ${2}
${INSS_DIR}/${SCRIPT} 58 ValuePoolHashMapTest org.hsqldb.store.ValuePoolHashMapTest ${2}
${INSS_DIR}/${SCRIPT} 59 IntervalTypeTest org.hsqldb.types.IntervalTypeTest ${2}
${INSS_DIR}/${SCRIPT} 60 OptionTest org.hsqldb.util.preprocessor.OptionTest ${2}
${INSS_DIR}/${SCRIPT} 61 PreprocessorTest org.hsqldb.util.preprocessor.PreprocessorTest ${2}
