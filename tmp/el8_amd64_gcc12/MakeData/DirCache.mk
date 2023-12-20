ALL_SUBSYSTEMS+=RecoEcal
subdirs_src_RecoEcal = src_RecoEcal_EgammaCoreTools
subdirs_src += src_RecoEcal
ALL_PACKAGES += RecoEcal/EgammaCoreTools
subdirs_src_RecoEcal_EgammaCoreTools := src_RecoEcal_EgammaCoreTools_plugins src_RecoEcal_EgammaCoreTools_python src_RecoEcal_EgammaCoreTools_src src_RecoEcal_EgammaCoreTools_test
ifeq ($(strip $(PyRecoEcalEgammaCoreTools)),)
PyRecoEcalEgammaCoreTools := self/src/RecoEcal/EgammaCoreTools/python
src_RecoEcal_EgammaCoreTools_python_parent := src/RecoEcal/EgammaCoreTools
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoEcal/EgammaCoreTools/python)
PyRecoEcalEgammaCoreTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/python/%,%,$(wildcard $(foreach dir,src/RecoEcal/EgammaCoreTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoEcalEgammaCoreTools_LOC_USE := self   
PyRecoEcalEgammaCoreTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/python
ALL_PRODS += PyRecoEcalEgammaCoreTools
PyRecoEcalEgammaCoreTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoEcalEgammaCoreTools,src/RecoEcal/EgammaCoreTools/python,src_RecoEcal_EgammaCoreTools_python))
else
$(eval $(call MultipleWarningMsg,PyRecoEcalEgammaCoreTools,src/RecoEcal/EgammaCoreTools/python))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_python
src_RecoEcal_EgammaCoreTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_python,src/RecoEcal/EgammaCoreTools/python,PYTHON))
ALL_SUBSYSTEMS+=EventFilter
subdirs_src_EventFilter = src_EventFilter_Utilities
subdirs_src += src_EventFilter
ALL_PACKAGES += EventFilter/Utilities
subdirs_src_EventFilter_Utilities := src_EventFilter_Utilities_plugins src_EventFilter_Utilities_python src_EventFilter_Utilities_scripts src_EventFilter_Utilities_src src_EventFilter_Utilities_test
ifeq ($(strip $(PyEventFilterUtilities)),)
PyEventFilterUtilities := self/src/EventFilter/Utilities/python
src_EventFilter_Utilities_python_parent := src/EventFilter/Utilities
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EventFilter/Utilities/python)
PyEventFilterUtilities_files := $(patsubst src/EventFilter/Utilities/python/%,%,$(wildcard $(foreach dir,src/EventFilter/Utilities/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyEventFilterUtilities_LOC_USE := self   
PyEventFilterUtilities_PACKAGE := self/src/EventFilter/Utilities/python
ALL_PRODS += PyEventFilterUtilities
PyEventFilterUtilities_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEventFilterUtilities,src/EventFilter/Utilities/python,src_EventFilter_Utilities_python))
else
$(eval $(call MultipleWarningMsg,PyEventFilterUtilities,src/EventFilter/Utilities/python))
endif
ALL_COMMONRULES += src_EventFilter_Utilities_python
src_EventFilter_Utilities_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EventFilter_Utilities_python,src/EventFilter/Utilities/python,PYTHON))
src_EventFilter_Utilities_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/EventFilter/Utilities/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_EventFilter_Utilities_scripts,src/EventFilter/Utilities/scripts,$(SCRAMSTORENAME_BIN),*))
ifeq ($(strip $(filterProbClusters)),)
filterProbClusters := self/src/RecoEcal/EgammaCoreTools/test
filterProbClusters_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,filterProbClusters.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
filterProbClusters_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
filterProbClusters_LOC_USE := self   RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts 
filterProbClusters_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,filterProbClusters,filterProbClusters,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
filterProbClusters_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += filterProbClusters
filterProbClusters_INIT_FUNC        += $$(eval $$(call Library,filterProbClusters,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
filterProbClusters_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,filterProbClusters,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterFunctions)),)
testEcalClusterFunctions := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterFunctions_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterFunctions.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterFunctions_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterFunctions_LOC_USE := self   RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts 
testEcalClusterFunctions_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterFunctions,testEcalClusterFunctions,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterFunctions_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterFunctions
testEcalClusterFunctions_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testEcalClusterFunctions_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterLazyTools)),)
testEcalClusterLazyTools := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterLazyTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterLazyTools.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterLazyTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterLazyTools_LOC_USE := self   RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts 
testEcalClusterLazyTools_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterLazyTools,testEcalClusterLazyTools,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterLazyTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterLazyTools
testEcalClusterLazyTools_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterLazyTools,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testEcalClusterLazyTools_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testEcalClusterLazyTools,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterSeverityAlgo)),)
testEcalClusterSeverityAlgo := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterSeverityAlgo_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterSeverityAlgo.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterSeverityAlgo_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterSeverityAlgo_LOC_USE := self   RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts 
testEcalClusterSeverityAlgo_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterSeverityAlgo,testEcalClusterSeverityAlgo,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterSeverityAlgo_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterSeverityAlgo
testEcalClusterSeverityAlgo_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterSeverityAlgo,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testEcalClusterSeverityAlgo_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testEcalClusterSeverityAlgo,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterTools)),)
testEcalClusterTools := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterTools.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterTools_LOC_USE := self   RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts 
testEcalClusterTools_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterTools,testEcalClusterTools,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterTools
testEcalClusterTools_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterTools,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testEcalClusterTools_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testEcalClusterTools,src/RecoEcal/EgammaCoreTools/test))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_test
src_RecoEcal_EgammaCoreTools_test_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_test,src/RecoEcal/EgammaCoreTools/test,TEST))
ifeq ($(strip $(BUFU_TEST)),)
BUFU_TEST := self/src/EventFilter/Utilities/test
BUFU_TEST_files := 1
BUFU_TEST_BuildFile    := $(WORKINGDIR)/cache/bf/src/EventFilter/Utilities/test/BuildFile
BUFU_TEST_LOC_USE := self   FWCore/Framework 
BUFU_TEST_PACKAGE := self/src/EventFilter/Utilities/test
ALL_PRODS += BUFU_TEST
BUFU_TEST_INIT_FUNC        += $$(eval $$(call Binary,BUFU_TEST,src/EventFilter/Utilities/test,src_EventFilter_Utilities_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
BUFU_TEST_CLASS := TEST
BUFU_TEST_TEST_RUNNER_CMD :=  RunBUFU.sh
else
$(eval $(call MultipleWarningMsg,BUFU_TEST,src/EventFilter/Utilities/test))
endif
ifeq ($(strip $(EventFilterUtilitiesTest)),)
EventFilterUtilitiesTest := self/src/EventFilter/Utilities/test
EventFilterUtilitiesTest_files := $(patsubst src/EventFilter/Utilities/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EventFilter/Utilities/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EventFilter/Utilities/test/$(file). Please fix src/EventFilter/Utilities/test/BuildFile.))))
EventFilterUtilitiesTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/EventFilter/Utilities/test/BuildFile
EventFilterUtilitiesTest_LOC_USE := self   FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities DataFormats/FEDRawData DataFormats/TCDS EventFilter/Utilities boost 
EventFilterUtilitiesTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EventFilterUtilitiesTest,EventFilterUtilitiesTest,$(SCRAMSTORENAME_LIB),src/EventFilter/Utilities/test))
EventFilterUtilitiesTest_PACKAGE := self/src/EventFilter/Utilities/test
ALL_PRODS += EventFilterUtilitiesTest
EventFilterUtilitiesTest_INIT_FUNC        += $$(eval $$(call Library,EventFilterUtilitiesTest,src/EventFilter/Utilities/test,src_EventFilter_Utilities_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
EventFilterUtilitiesTest_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,EventFilterUtilitiesTest,src/EventFilter/Utilities/test))
endif
ALL_COMMONRULES += src_EventFilter_Utilities_test
src_EventFilter_Utilities_test_parent := EventFilter/Utilities
src_EventFilter_Utilities_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EventFilter_Utilities_test,src/EventFilter/Utilities/test,TEST))
ALL_SUBSYSTEMS+=xgbModels
subdirs_src_xgbModels = 
subdirs_src += src_xgbModels
