src_EventFilter_Utilities_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/EventFilter/Utilities/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_EventFilter_Utilities_scripts,src/EventFilter/Utilities/scripts,$(SCRAMSTORENAME_BIN),*))
