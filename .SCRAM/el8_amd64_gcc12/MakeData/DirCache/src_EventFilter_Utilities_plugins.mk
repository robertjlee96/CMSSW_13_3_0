ifeq ($(strip $(EventFilterUtilitiesPlugins)),)
EventFilterUtilitiesPlugins := self/src/EventFilter/Utilities/plugins
PLUGINS:=yes
EventFilterUtilitiesPlugins_files := $(patsubst src/EventFilter/Utilities/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EventFilter/Utilities/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EventFilter/Utilities/plugins/$(file). Please fix src/EventFilter/Utilities/plugins/BuildFile.))))
EventFilterUtilitiesPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EventFilter/Utilities/plugins/BuildFile
EventFilterUtilitiesPlugins_LOC_USE := self   DataFormats/FEDRawData EventFilter/Utilities FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Sources FWCore/Utilities IOPool/Streamer RecoEcal/EgammaCoreTools clhep boost root CommonTools/MVAUtils stdcxx-fs 
EventFilterUtilitiesPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EventFilterUtilitiesPlugins,EventFilterUtilitiesPlugins,$(SCRAMSTORENAME_LIB),src/EventFilter/Utilities/plugins))
EventFilterUtilitiesPlugins_PACKAGE := self/src/EventFilter/Utilities/plugins
ALL_PRODS += EventFilterUtilitiesPlugins
EventFilter/Utilities_forbigobj+=EventFilterUtilitiesPlugins
EventFilterUtilitiesPlugins_INIT_FUNC        += $$(eval $$(call Library,EventFilterUtilitiesPlugins,src/EventFilter/Utilities/plugins,src_EventFilter_Utilities_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
EventFilterUtilitiesPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,EventFilterUtilitiesPlugins,src/EventFilter/Utilities/plugins))
endif
ALL_COMMONRULES += src_EventFilter_Utilities_plugins
src_EventFilter_Utilities_plugins_parent := EventFilter/Utilities
src_EventFilter_Utilities_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EventFilter_Utilities_plugins,src/EventFilter/Utilities/plugins,PLUGINS))
