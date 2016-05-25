#!/bin/sh
# Script that calls InSSTestRunner to get the instrumented requirements

#{1} COVERAGE_TYPE
#{2} FAULT

#VERSION 5
###SETTINGS####
INSS_DIR=/home/higor/Dropbox/experiments/scripts/ant/v5
SCRIPT=inss_ant_v5_${1}.sh
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

${INSS_DIR}/${SCRIPT} 53 ContainsTest org.apache.tools.ant.taskdefs.condition.ContainsTest ${2}

${INSS_DIR}/${SCRIPT} 54 EqualsTest org.apache.tools.ant.taskdefs.condition.EqualsTest ${2}

${INSS_DIR}/${SCRIPT} 55 DependTest org.apache.tools.ant.taskdefs.optional.depend.DependTest ${2}

${INSS_DIR}/${SCRIPT} 56 EchoPropertiesTest org.apache.tools.ant.taskdefs.optional.EchoPropertiesTest ${2}

${INSS_DIR}/${SCRIPT} 57 PropertyFileTest org.apache.tools.ant.taskdefs.optional.PropertyFileTest ${2}

${INSS_DIR}/${SCRIPT} 58 XmlValidateTest org.apache.tools.ant.taskdefs.optional.XmlValidateTest ${2}

${INSS_DIR}/${SCRIPT} 59 BasenameTest org.apache.tools.ant.taskdefs.BasenameTest ${2}

#${INSS_DIR}/${SCRIPT} 60 BUnzip2Test org.apache.tools.ant.taskdefs.BUnzip2Test ${2}

#${INSS_DIR}/${SCRIPT} 61 BZip2Test org.apache.tools.ant.taskdefs.BZip2Test ${2}

${INSS_DIR}/${SCRIPT} 62 ChecksumTest org.apache.tools.ant.taskdefs.ChecksumTest ${2}

${INSS_DIR}/${SCRIPT} 63 ConcatTest org.apache.tools.ant.taskdefs.ConcatTest ${2}

${INSS_DIR}/${SCRIPT} 64 ConditionTest org.apache.tools.ant.taskdefs.ConditionTest ${2}

${INSS_DIR}/${SCRIPT} 65 DirnameTest org.apache.tools.ant.taskdefs.DirnameTest ${2}

${INSS_DIR}/${SCRIPT} 66 DynamicTest org.apache.tools.ant.taskdefs.DynamicTest ${2}

${INSS_DIR}/${SCRIPT} 67 ExecuteJavaTest org.apache.tools.ant.taskdefs.ExecuteJavaTest ${2}

${INSS_DIR}/${SCRIPT} 68 InitializeClassTest org.apache.tools.ant.taskdefs.InitializeClassTest ${2}

${INSS_DIR}/${SCRIPT} 69 InputTest org.apache.tools.ant.taskdefs.InputTest ${2}

${INSS_DIR}/${SCRIPT} 70 JavacTest org.apache.tools.ant.taskdefs.JavacTest ${2}

${INSS_DIR}/${SCRIPT} 71 LoadFileTest org.apache.tools.ant.taskdefs.LoadFileTest ${2}

${INSS_DIR}/${SCRIPT} 72 LoadPropertiesTest org.apache.tools.ant.taskdefs.LoadPropertiesTest ${2}

${INSS_DIR}/${SCRIPT} 73 ManifestTest org.apache.tools.ant.taskdefs.ManifestTest ${2}

${INSS_DIR}/${SCRIPT} 74 MoveTest org.apache.tools.ant.taskdefs.MoveTest ${2}

${INSS_DIR}/${SCRIPT} 75 ParallelTest org.apache.tools.ant.taskdefs.ParallelTest ${2}

${INSS_DIR}/${SCRIPT} 76 RmicTest org.apache.tools.ant.taskdefs.RmicTest ${2}

${INSS_DIR}/${SCRIPT} 77 TStampTest org.apache.tools.ant.taskdefs.TStampTest ${2}

${INSS_DIR}/${SCRIPT} 78 TypedefTest org.apache.tools.ant.taskdefs.TypedefTest ${2}

${INSS_DIR}/${SCRIPT} 79 UntarTest org.apache.tools.ant.taskdefs.UntarTest ${2}

${INSS_DIR}/${SCRIPT} 80 WarTest org.apache.tools.ant.taskdefs.WarTest ${2}

${INSS_DIR}/${SCRIPT} 81 XmlPropertyTest org.apache.tools.ant.taskdefs.XmlPropertyTest ${2}

${INSS_DIR}/${SCRIPT} 82 ContainsSelectorTest org.apache.tools.ant.types.selectors.ContainsSelectorTest ${2}

${INSS_DIR}/${SCRIPT} 83 DateSelectorTest org.apache.tools.ant.types.selectors.DateSelectorTest ${2}

${INSS_DIR}/${SCRIPT} 84 DependSelectorTest org.apache.tools.ant.types.selectors.DependSelectorTest ${2}

${INSS_DIR}/${SCRIPT} 85 DepthSelectorTest org.apache.tools.ant.types.selectors.DepthSelectorTest ${2}

${INSS_DIR}/${SCRIPT} 86 FilenameSelectorTest org.apache.tools.ant.types.selectors.FilenameSelectorTest ${2}

${INSS_DIR}/${SCRIPT} 87 PresentSelectorTest org.apache.tools.ant.types.selectors.PresentSelectorTest ${2}

${INSS_DIR}/${SCRIPT} 88 SizeSelectorTest org.apache.tools.ant.types.selectors.SizeSelectorTest ${2}

${INSS_DIR}/${SCRIPT} 89 DirSetTest org.apache.tools.ant.types.DirSetTest ${2}

${INSS_DIR}/${SCRIPT} 90 FlexIntegerTest org.apache.tools.ant.types.FlexIntegerTest ${2}

${INSS_DIR}/${SCRIPT} 91 XMLCatalogTest org.apache.tools.ant.types.XMLCatalogTest ${2}

${INSS_DIR}/${SCRIPT} 92 FacadeTaskHelperTest org.apache.tools.ant.util.facade.FacadeTaskHelperTest ${2}

${INSS_DIR}/${SCRIPT} 93 ImplementationSpecificArgumentTest org.apache.tools.ant.util.facade.ImplementationSpecificArgumentTest ${2}

${INSS_DIR}/${SCRIPT} 94 CollectionUtilsTest org.apache.tools.ant.util.CollectionUtilsTest ${2}

${INSS_DIR}/${SCRIPT} 95 DateUtilsTest org.apache.tools.ant.util.DateUtilsTest ${2}

${INSS_DIR}/${SCRIPT} 96 JavaEnvUtilsTest org.apache.tools.ant.util.JavaEnvUtilsTest ${2}

${INSS_DIR}/${SCRIPT} 97 PackageNameMapperTest org.apache.tools.ant.util.PackageNameMapperTest ${2}

${INSS_DIR}/${SCRIPT} 98 StringUtilsTest org.apache.tools.ant.util.StringUtilsTest ${2}

${INSS_DIR}/${SCRIPT} 99 AntClassLoaderTest org.apache.tools.ant.AntClassLoaderTest ${2}

${INSS_DIR}/${SCRIPT} 100 ImmutableTest org.apache.tools.ant.ImmutableTest ${2}

${INSS_DIR}/${SCRIPT} 101 PropertyExpansionTest org.apache.tools.ant.PropertyExpansionTest ${2}
