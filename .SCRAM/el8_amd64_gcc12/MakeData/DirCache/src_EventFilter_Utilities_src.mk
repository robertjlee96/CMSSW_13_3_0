ifeq ($(strip $(EventFilter/Utilities)),)
ALL_COMMONRULES += src_EventFilter_Utilities_src
src_EventFilter_Utilities_src_parent := EventFilter/Utilities
src_EventFilter_Utilities_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_EventFilter_Utilities_src,src/EventFilter/Utilities/src,LIBRARY))
EventFilterUtilities := self/EventFilter/Utilities
EventFilter/Utilities := EventFilterUtilities
EventFilterUtilities_files := $(patsubst src/EventFilter/Utilities/src/%,%,$(wildcard $(foreach dir,src/EventFilter/Utilities/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
EventFilterUtilities_BuildFile    := $(WORKINGDIR)/cache/bf/src/EventFilter/Utilities/BuildFile
EventFilterUtilities_LOC_USE := self   curl stdcxx-fs tbb DataFormats/FEDRawData DataFormats/TCDS DataFormats/L1Trigger FWCore/Framework FWCore/MessageLogger FWCore/ServiceRegistry FWCore/Sources IOPool/Streamer CommonTools/MVAUtils 
EventFilterUtilities_EX_LIB   := EventFilterUtilities
EventFilterUtilities_EX_USE   := $(foreach d,$(EventFilterUtilities_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterUtilities_PACKAGE := self/src/EventFilter/Utilities/src
ALL_PRODS += EventFilterUtilities
EventFilterUtilities_CLASS := LIBRARY
EventFilter/Utilities_forbigobj+=EventFilterUtilities
EventFilterUtilities_INIT_FUNC        += $$(eval $$(call Library,EventFilterUtilities,src/EventFilter/Utilities/src,src_EventFilter_Utilities_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
