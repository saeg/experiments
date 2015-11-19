#!/bin/sh
# Script that calls InSSTestRunner to get the instrumented requirements

#VERSION 7
###SETTINGS####
INSS_DIR=/home/higor/Dropbox/experiments/scripts/ant/v7
SCRIPT=inss_ant_v7_orig.sh
###SETTINGS####

echo ">>>>>>>>running tests"
${INSS_DIR}/${SCRIPT} 01 GzipTest org.apache.tools.ant.taskdefs.GzipTest

${INSS_DIR}/${SCRIPT} 02 GUnzipTest org.apache.tools.ant.taskdefs.GUnzipTest

${INSS_DIR}/${SCRIPT} 03 AntStructureTest org.apache.tools.ant.taskdefs.AntStructureTest

${INSS_DIR}/${SCRIPT} 04 AntTest org.apache.tools.ant.taskdefs.AntTest

${INSS_DIR}/${SCRIPT} 05 AvailableTest org.apache.tools.ant.taskdefs.AvailableTest

${INSS_DIR}/${SCRIPT} 06 CopydirTest org.apache.tools.ant.taskdefs.CopydirTest

${INSS_DIR}/${SCRIPT} 07 CopyfileTest org.apache.tools.ant.taskdefs.CopyfileTest

${INSS_DIR}/${SCRIPT} 08 DeleteTest org.apache.tools.ant.taskdefs.DeleteTest

${INSS_DIR}/${SCRIPT} 09 DeltreeTest org.apache.tools.ant.taskdefs.DeltreeTest

${INSS_DIR}/${SCRIPT} 10 EchoTest org.apache.tools.ant.taskdefs.EchoTest

${INSS_DIR}/${SCRIPT} 11 FailTest org.apache.tools.ant.taskdefs.FailTest

${INSS_DIR}/${SCRIPT} 12 FilterTest org.apache.tools.ant.taskdefs.FilterTest

${INSS_DIR}/${SCRIPT} 13 GetTest org.apache.tools.ant.taskdefs.GetTest

${INSS_DIR}/${SCRIPT} 14 MkdirTest org.apache.tools.ant.taskdefs.MkdirTest

${INSS_DIR}/${SCRIPT} 15 RenameTest org.apache.tools.ant.taskdefs.RenameTest

${INSS_DIR}/${SCRIPT} 16 ReplaceTest org.apache.tools.ant.taskdefs.ReplaceTest

${INSS_DIR}/${SCRIPT} 17 TarTest org.apache.tools.ant.taskdefs.TarTest

${INSS_DIR}/${SCRIPT} 18 TaskdefTest org.apache.tools.ant.taskdefs.TaskdefTest

${INSS_DIR}/${SCRIPT} 19 UnzipTest org.apache.tools.ant.taskdefs.UnzipTest

${INSS_DIR}/${SCRIPT} 20 ZipTest org.apache.tools.ant.taskdefs.ZipTest

${INSS_DIR}/${SCRIPT} 21 CommandlineJavaTest org.apache.tools.ant.types.CommandlineJavaTest

${INSS_DIR}/${SCRIPT} 22 CommandlineTest org.apache.tools.ant.types.CommandlineTest

${INSS_DIR}/${SCRIPT} 23 EnumeratedAttributeTest org.apache.tools.ant.types.EnumeratedAttributeTest

${INSS_DIR}/${SCRIPT} 24 FileSetTest org.apache.tools.ant.types.FileSetTest

${INSS_DIR}/${SCRIPT} 25 PathTest org.apache.tools.ant.types.PathTest

${INSS_DIR}/${SCRIPT} 26 PatternSetTest org.apache.tools.ant.types.PatternSetTest

${INSS_DIR}/${SCRIPT} 27 IntrospectionHelperTest org.apache.tools.ant.IntrospectionHelperTest

${INSS_DIR}/${SCRIPT} 28 ProjectTest org.apache.tools.ant.ProjectTest

${INSS_DIR}/${SCRIPT} 29 ExecuteWatchdogTest org.apache.tools.ant.taskdefs.ExecuteWatchdogTest

${INSS_DIR}/${SCRIPT} 30 PropertyTest org.apache.tools.ant.taskdefs.PropertyTest

${INSS_DIR}/${SCRIPT} 31 MapperTest org.apache.tools.ant.types.MapperTest

${INSS_DIR}/${SCRIPT} 32 DOMElementWriterTest org.apache.tools.ant.util.DOMElementWriterTest

${INSS_DIR}/${SCRIPT} 33 GlobPatternMapperTest org.apache.tools.ant.util.GlobPatternMapperTest

${INSS_DIR}/${SCRIPT} 34 IncludeTest org.apache.tools.ant.IncludeTest

${INSS_DIR}/${SCRIPT} 35 JUnitTestRunnerTest org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunnerTest

${INSS_DIR}/${SCRIPT} 36 CopyTest org.apache.tools.ant.taskdefs.CopyTest

${INSS_DIR}/${SCRIPT} 37 CVSPassTest org.apache.tools.ant.taskdefs.CVSPassTest

${INSS_DIR}/${SCRIPT} 38 DependSetTest org.apache.tools.ant.taskdefs.DependSetTest

${INSS_DIR}/${SCRIPT} 39 FixCrLfTest org.apache.tools.ant.taskdefs.FixCrLfTest

${INSS_DIR}/${SCRIPT} 40 JarTest org.apache.tools.ant.taskdefs.JarTest

${INSS_DIR}/${SCRIPT} 41 JavaTest org.apache.tools.ant.taskdefs.JavaTest

${INSS_DIR}/${SCRIPT} 42 SleepTest org.apache.tools.ant.taskdefs.SleepTest

${INSS_DIR}/${SCRIPT} 43 DescriptionTest org.apache.tools.ant.types.DescriptionTest

${INSS_DIR}/${SCRIPT} 44 FileListTest org.apache.tools.ant.types.FileListTest

${INSS_DIR}/${SCRIPT} 45 FilterSetTest org.apache.tools.ant.types.FilterSetTest

${INSS_DIR}/${SCRIPT} 46 FileUtilsTest org.apache.tools.ant.util.FileUtilsTest

${INSS_DIR}/${SCRIPT} 47 DirectoryScannerTest org.apache.tools.ant.DirectoryScannerTest

${INSS_DIR}/${SCRIPT} 48 AsiExtraFieldTest org.apache.tools.zip.AsiExtraFieldTest

${INSS_DIR}/${SCRIPT} 49 ExtraFieldUtilsTest org.apache.tools.zip.ExtraFieldUtilsTest

${INSS_DIR}/${SCRIPT} 50 ZipEntryTest org.apache.tools.zip.ZipEntryTest

${INSS_DIR}/${SCRIPT} 51 ZipShortTest org.apache.tools.zip.ZipShortTest

${INSS_DIR}/${SCRIPT} 52 ZipLongTest org.apache.tools.zip.ZipLongTest

${INSS_DIR}/${SCRIPT} 53 ContainsTest org.apache.tools.ant.taskdefs.condition.ContainsTest

${INSS_DIR}/${SCRIPT} 54 EqualsTest org.apache.tools.ant.taskdefs.condition.EqualsTest

${INSS_DIR}/${SCRIPT} 55 DependTest org.apache.tools.ant.taskdefs.optional.depend.DependTest

${INSS_DIR}/${SCRIPT} 56 EchoPropertiesTest org.apache.tools.ant.taskdefs.optional.EchoPropertiesTest

${INSS_DIR}/${SCRIPT} 57 PropertyFileTest org.apache.tools.ant.taskdefs.optional.PropertyFileTest

${INSS_DIR}/${SCRIPT} 58 XmlValidateTest org.apache.tools.ant.taskdefs.optional.XmlValidateTest

${INSS_DIR}/${SCRIPT} 59 BasenameTest org.apache.tools.ant.taskdefs.BasenameTest

#${INSS_DIR}/${SCRIPT} 60 BUnzip2Test org.apache.tools.ant.taskdefs.BUnzip2Test

#${INSS_DIR}/${SCRIPT} 61 BZip2Test org.apache.tools.ant.taskdefs.BZip2Test

${INSS_DIR}/${SCRIPT} 62 ChecksumTest org.apache.tools.ant.taskdefs.ChecksumTest

${INSS_DIR}/${SCRIPT} 63 ConcatTest org.apache.tools.ant.taskdefs.ConcatTest

${INSS_DIR}/${SCRIPT} 64 ConditionTest org.apache.tools.ant.taskdefs.ConditionTest

${INSS_DIR}/${SCRIPT} 65 DirnameTest org.apache.tools.ant.taskdefs.DirnameTest

${INSS_DIR}/${SCRIPT} 66 DynamicTest org.apache.tools.ant.taskdefs.DynamicTest

${INSS_DIR}/${SCRIPT} 67 ExecuteJavaTest org.apache.tools.ant.taskdefs.ExecuteJavaTest

${INSS_DIR}/${SCRIPT} 68 InitializeClassTest org.apache.tools.ant.taskdefs.InitializeClassTest

${INSS_DIR}/${SCRIPT} 69 InputTest org.apache.tools.ant.taskdefs.InputTest

${INSS_DIR}/${SCRIPT} 70 JavacTest org.apache.tools.ant.taskdefs.JavacTest

${INSS_DIR}/${SCRIPT} 71 LoadFileTest org.apache.tools.ant.taskdefs.LoadFileTest

${INSS_DIR}/${SCRIPT} 72 LoadPropertiesTest org.apache.tools.ant.taskdefs.LoadPropertiesTest

${INSS_DIR}/${SCRIPT} 73 ManifestTest org.apache.tools.ant.taskdefs.ManifestTest

${INSS_DIR}/${SCRIPT} 74 MoveTest org.apache.tools.ant.taskdefs.MoveTest

${INSS_DIR}/${SCRIPT} 75 ParallelTest org.apache.tools.ant.taskdefs.ParallelTest

${INSS_DIR}/${SCRIPT} 76 RmicTest org.apache.tools.ant.taskdefs.RmicTest

${INSS_DIR}/${SCRIPT} 77 TStampTest org.apache.tools.ant.taskdefs.TStampTest

${INSS_DIR}/${SCRIPT} 78 TypedefTest org.apache.tools.ant.taskdefs.TypedefTest

${INSS_DIR}/${SCRIPT} 79 UntarTest org.apache.tools.ant.taskdefs.UntarTest

${INSS_DIR}/${SCRIPT} 80 WarTest org.apache.tools.ant.taskdefs.WarTest

${INSS_DIR}/${SCRIPT} 81 XmlPropertyTest org.apache.tools.ant.taskdefs.XmlPropertyTest

${INSS_DIR}/${SCRIPT} 82 ContainsSelectorTest org.apache.tools.ant.types.selectors.ContainsSelectorTest

${INSS_DIR}/${SCRIPT} 83 DateSelectorTest org.apache.tools.ant.types.selectors.DateSelectorTest

${INSS_DIR}/${SCRIPT} 84 DependSelectorTest org.apache.tools.ant.types.selectors.DependSelectorTest

${INSS_DIR}/${SCRIPT} 85 DepthSelectorTest org.apache.tools.ant.types.selectors.DepthSelectorTest

${INSS_DIR}/${SCRIPT} 86 FilenameSelectorTest org.apache.tools.ant.types.selectors.FilenameSelectorTest

${INSS_DIR}/${SCRIPT} 87 PresentSelectorTest org.apache.tools.ant.types.selectors.PresentSelectorTest

${INSS_DIR}/${SCRIPT} 88 SizeSelectorTest org.apache.tools.ant.types.selectors.SizeSelectorTest

${INSS_DIR}/${SCRIPT} 89 DirSetTest org.apache.tools.ant.types.DirSetTest

${INSS_DIR}/${SCRIPT} 90 FlexIntegerTest org.apache.tools.ant.types.FlexIntegerTest

${INSS_DIR}/${SCRIPT} 91 XMLCatalogTest org.apache.tools.ant.types.XMLCatalogTest

${INSS_DIR}/${SCRIPT} 92 FacadeTaskHelperTest org.apache.tools.ant.util.facade.FacadeTaskHelperTest

${INSS_DIR}/${SCRIPT} 93 ImplementationSpecificArgumentTest org.apache.tools.ant.util.facade.ImplementationSpecificArgumentTest

${INSS_DIR}/${SCRIPT} 94 CollectionUtilsTest org.apache.tools.ant.util.CollectionUtilsTest

${INSS_DIR}/${SCRIPT} 95 DateUtilsTest org.apache.tools.ant.util.DateUtilsTest

${INSS_DIR}/${SCRIPT} 96 JavaEnvUtilsTest org.apache.tools.ant.util.JavaEnvUtilsTest

${INSS_DIR}/${SCRIPT} 97 PackageNameMapperTest org.apache.tools.ant.util.PackageNameMapperTest

${INSS_DIR}/${SCRIPT} 98 StringUtilsTest org.apache.tools.ant.util.StringUtilsTest

${INSS_DIR}/${SCRIPT} 99 AntClassLoaderTest org.apache.tools.ant.AntClassLoaderTest

${INSS_DIR}/${SCRIPT} 100 ImmutableTest org.apache.tools.ant.ImmutableTest

${INSS_DIR}/${SCRIPT} 101 PropertyExpansionTest org.apache.tools.ant.PropertyExpansionTest

${INSS_DIR}/${SCRIPT} 102 LineContainsTest org.apache.tools.ant.filters.LineContainsTest

${INSS_DIR}/${SCRIPT} 103 JUnitVersionHelperTest org.apache.tools.ant.taskdefs.optional.junit.JUnitVersionHelperTest

${INSS_DIR}/${SCRIPT} 104 JAXPUtilsTest org.apache.tools.ant.util.JAXPUtilsTest

${INSS_DIR}/${SCRIPT} 105 TaskContainerTest org.apache.tools.ant.TaskContainerTest
