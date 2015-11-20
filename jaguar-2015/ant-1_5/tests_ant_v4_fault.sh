#!/bin/sh
# Script that calls InSSTestRunner to get the instrumented requirements

#{1} COVERAGE_TYPE
#{2} FAULT

#VERSION 4
###SETTINGS####
INSS_DIR=/home/higor/Dropbox/experiments/scripts/ant/v4
SCRIPT=inss_ant_v4_${1}.sh
###SETTINGS####

echo ">>>>>>>>running tests"
${INSS_DIR}/${SCRIPT} 01 GzipTest org.apache.tools.ant.taskdefs.GzipTest ${2}

${INSS_DIR}/${SCRIPT} 02 GUnzipTest org.apache.tools.ant.taskdefs.GUnzipTest ${2}

${INSS_DIR}/${SCRIPT} 03 AntStructureTest org.apache.tools.ant.taskdefs.AntStructureTest ${2}

${INSS_DIR}/${SCRIPT} 04 AntTest org.apache.tools.ant.taskdefs.AntTest ${2}

${INSS_DIR}/${SCRIPT} 05 AvailableTest org.apache.tools.ant.taskdefs.AvailableTest ${2}

${INSS_DIR}/${SCRIPT} 06 CopydirTest org.apache.tools.ant.taskdefs.CopydirTest ${2}

${INSS_DIR}/${SCRIPT} 07 CopyfileTest org.apache.tools.ant.taskdefs.CopyfileTest ${2}

${INSS_DIR}/${SCRIPT} 08 DeleteTest org.apache.tools.ant.taskdefs.DeleteTest ${2}

${INSS_DIR}/${SCRIPT} 09 DeltreeTest org.apache.tools.ant.taskdefs.DeltreeTest ${2}

${INSS_DIR}/${SCRIPT} 10 EchoTest org.apache.tools.ant.taskdefs.EchoTest ${2}

${INSS_DIR}/${SCRIPT} 11 FailTest org.apache.tools.ant.taskdefs.FailTest ${2}

${INSS_DIR}/${SCRIPT} 12 FilterTest org.apache.tools.ant.taskdefs.FilterTest ${2}

${INSS_DIR}/${SCRIPT} 13 GetTest org.apache.tools.ant.taskdefs.GetTest ${2}

${INSS_DIR}/${SCRIPT} 14 MkdirTest org.apache.tools.ant.taskdefs.MkdirTest ${2}

${INSS_DIR}/${SCRIPT} 15 RenameTest org.apache.tools.ant.taskdefs.RenameTest ${2}

${INSS_DIR}/${SCRIPT} 16 ReplaceTest org.apache.tools.ant.taskdefs.ReplaceTest ${2}

${INSS_DIR}/${SCRIPT} 17 TarTest org.apache.tools.ant.taskdefs.TarTest ${2}

${INSS_DIR}/${SCRIPT} 18 TaskdefTest org.apache.tools.ant.taskdefs.TaskdefTest ${2}

${INSS_DIR}/${SCRIPT} 19 UnzipTest org.apache.tools.ant.taskdefs.UnzipTest ${2}

${INSS_DIR}/${SCRIPT} 20 ZipTest org.apache.tools.ant.taskdefs.ZipTest ${2}

${INSS_DIR}/${SCRIPT} 21 CommandlineJavaTest org.apache.tools.ant.types.CommandlineJavaTest ${2}

${INSS_DIR}/${SCRIPT} 22 CommandlineTest org.apache.tools.ant.types.CommandlineTest ${2}

${INSS_DIR}/${SCRIPT} 23 EnumeratedAttributeTest org.apache.tools.ant.types.EnumeratedAttributeTest ${2}

${INSS_DIR}/${SCRIPT} 24 FileSetTest org.apache.tools.ant.types.FileSetTest ${2}

${INSS_DIR}/${SCRIPT} 25 PathTest org.apache.tools.ant.types.PathTest ${2}

${INSS_DIR}/${SCRIPT} 26 PatternSetTest org.apache.tools.ant.types.PatternSetTest ${2}

${INSS_DIR}/${SCRIPT} 27 IntrospectionHelperTest org.apache.tools.ant.IntrospectionHelperTest ${2}

${INSS_DIR}/${SCRIPT} 28 ProjectTest org.apache.tools.ant.ProjectTest ${2}

${INSS_DIR}/${SCRIPT} 29 ExecuteWatchdogTest org.apache.tools.ant.taskdefs.ExecuteWatchdogTest ${2}

${INSS_DIR}/${SCRIPT} 30 PropertyTest org.apache.tools.ant.taskdefs.PropertyTest ${2}

${INSS_DIR}/${SCRIPT} 31 MapperTest org.apache.tools.ant.types.MapperTest ${2}

${INSS_DIR}/${SCRIPT} 32 DOMElementWriterTest org.apache.tools.ant.util.DOMElementWriterTest ${2}

${INSS_DIR}/${SCRIPT} 33 GlobPatternMapperTest org.apache.tools.ant.util.GlobPatternMapperTest ${2}

${INSS_DIR}/${SCRIPT} 34 IncludeTest org.apache.tools.ant.IncludeTest ${2}

${INSS_DIR}/${SCRIPT} 35 JUnitTestRunnerTest org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunnerTest ${2}

${INSS_DIR}/${SCRIPT} 36 CopyTest org.apache.tools.ant.taskdefs.CopyTest ${2}

${INSS_DIR}/${SCRIPT} 37 CVSPassTest org.apache.tools.ant.taskdefs.CVSPassTest ${2}

${INSS_DIR}/${SCRIPT} 38 DependSetTest org.apache.tools.ant.taskdefs.DependSetTest ${2}

${INSS_DIR}/${SCRIPT} 39 FixCrLfTest org.apache.tools.ant.taskdefs.FixCrLfTest ${2}

${INSS_DIR}/${SCRIPT} 40 JarTest org.apache.tools.ant.taskdefs.JarTest ${2}

${INSS_DIR}/${SCRIPT} 41 JavaTest org.apache.tools.ant.taskdefs.JavaTest ${2}

${INSS_DIR}/${SCRIPT} 42 SleepTest org.apache.tools.ant.taskdefs.SleepTest ${2}

${INSS_DIR}/${SCRIPT} 43 DescriptionTest org.apache.tools.ant.types.DescriptionTest ${2}

${INSS_DIR}/${SCRIPT} 44 FileListTest org.apache.tools.ant.types.FileListTest ${2}

${INSS_DIR}/${SCRIPT} 45 FilterSetTest org.apache.tools.ant.types.FilterSetTest ${2}

${INSS_DIR}/${SCRIPT} 46 FileUtilsTest org.apache.tools.ant.util.FileUtilsTest ${2}

${INSS_DIR}/${SCRIPT} 47 DirectoryScannerTest org.apache.tools.ant.DirectoryScannerTest ${2}

${INSS_DIR}/${SCRIPT} 48 AsiExtraFieldTest org.apache.tools.zip.AsiExtraFieldTest ${2}

${INSS_DIR}/${SCRIPT} 49 ExtraFieldUtilsTest org.apache.tools.zip.ExtraFieldUtilsTest ${2}

${INSS_DIR}/${SCRIPT} 50 ZipEntryTest org.apache.tools.zip.ZipEntryTest ${2}

${INSS_DIR}/${SCRIPT} 51 ZipShortTest org.apache.tools.zip.ZipShortTest ${2}

${INSS_DIR}/${SCRIPT} 52 ZipLongTest org.apache.tools.zip.ZipLongTest ${2}
