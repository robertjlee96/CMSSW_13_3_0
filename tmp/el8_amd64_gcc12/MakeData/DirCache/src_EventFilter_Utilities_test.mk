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
