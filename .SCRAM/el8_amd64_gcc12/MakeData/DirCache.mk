ifeq ($(strip $(RecoEcal/EgammaCoreTools)),)
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_src
src_RecoEcal_EgammaCoreTools_src_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_src,src/RecoEcal/EgammaCoreTools/src,LIBRARY))
RecoEcalEgammaCoreTools := self/RecoEcal/EgammaCoreTools
RecoEcal/EgammaCoreTools := RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/src/%,%,$(wildcard $(foreach dir,src/RecoEcal/EgammaCoreTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEcalEgammaCoreTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/BuildFile
RecoEcalEgammaCoreTools_LOC_USE := self   DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math DataFormats/ParticleFlowReco DataFormats/EcalDetId DataFormats/GeometryVector DataFormats/CaloRecHit FWCore/Framework FWCore/Utilities FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo Geometry/Records RecoLocalCalo/EcalRecAlgos CalibCalorimetry/EcalLaserCorrection PhysicsTools/TensorFlow clhep 
RecoEcalEgammaCoreTools_EX_LIB   := RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_EX_USE   := $(foreach d,$(RecoEcalEgammaCoreTools_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEcalEgammaCoreTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/src
ALL_PRODS += RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_CLASS := LIBRARY
RecoEcal/EgammaCoreTools_forbigobj+=RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_INIT_FUNC        += $$(eval $$(call Library,RecoEcalEgammaCoreTools,src/RecoEcal/EgammaCoreTools/src,src_RecoEcal_EgammaCoreTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(RecoEcalEcalClusterFunctions)),)
RecoEcalEcalClusterFunctions := self/src/RecoEcal/EgammaCoreTools/plugins
PLUGINS:=yes
RecoEcalEcalClusterFunctions_files := $(patsubst src/RecoEcal/EgammaCoreTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/plugins/$(file). Please fix src/RecoEcal/EgammaCoreTools/plugins/BuildFile.))))
RecoEcalEcalClusterFunctions_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/plugins/BuildFile
RecoEcalEcalClusterFunctions_LOC_USE := self   RecoEcal/EgammaCoreTools CondFormats/DataRecord CondFormats/EcalObjects 
RecoEcalEcalClusterFunctions_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEcalEcalClusterFunctions,RecoEcalEcalClusterFunctions,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/plugins))
RecoEcalEcalClusterFunctions_PACKAGE := self/src/RecoEcal/EgammaCoreTools/plugins
ALL_PRODS += RecoEcalEcalClusterFunctions
RecoEcal/EgammaCoreTools_forbigobj+=RecoEcalEcalClusterFunctions
RecoEcalEcalClusterFunctions_INIT_FUNC        += $$(eval $$(call Library,RecoEcalEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/plugins,src_RecoEcal_EgammaCoreTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEcalEcalClusterFunctions_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEcalEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/plugins))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_plugins
src_RecoEcal_EgammaCoreTools_plugins_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_plugins,src/RecoEcal/EgammaCoreTools/plugins,PLUGINS))
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
