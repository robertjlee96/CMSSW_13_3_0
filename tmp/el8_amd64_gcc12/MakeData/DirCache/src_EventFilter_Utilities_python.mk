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
