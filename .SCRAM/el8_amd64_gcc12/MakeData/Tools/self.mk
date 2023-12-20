ALL_TOOLS      += self
self_EX_INCLUDE := /afs/cern.ch/work/r/rlee/public/CMSSW_13_3_0/src /afs/cern.ch/work/r/rlee/public/CMSSW_13_3_0/include/el8_amd64_gcc12/src /afs/cern.ch/work/r/rlee/public/CMSSW_13_3_0/include/LCG /cvmfs/cms.cern.ch/el8_amd64_gcc12/cms/cmssw/CMSSW_13_3_0/src
self_EX_LIBDIR := /afs/cern.ch/work/r/rlee/public/CMSSW_13_3_0/biglib/el8_amd64_gcc12 /afs/cern.ch/work/r/rlee/public/CMSSW_13_3_0/lib/el8_amd64_gcc12 /afs/cern.ch/work/r/rlee/public/CMSSW_13_3_0/external/el8_amd64_gcc12/lib /cvmfs/cms.cern.ch/el8_amd64_gcc12/cms/cmssw/CMSSW_13_3_0/biglib/el8_amd64_gcc12 /cvmfs/cms.cern.ch/el8_amd64_gcc12/cms/cmssw/CMSSW_13_3_0/lib/el8_amd64_gcc12 /cvmfs/cms.cern.ch/el8_amd64_gcc12/cms/cmssw/CMSSW_13_3_0/external/el8_amd64_gcc12/lib
self_EX_FLAGS_ALPAKA_BACKENDS  := cuda rocm serial
self_EX_FLAGS_CHECK_PRIVATE_HEADERS  := 1
self_EX_FLAGS_CODE_CHECK_ALPAKA_BACKEND  := serial
self_EX_FLAGS_DEFAULT_COMPILER  := gcc
self_EX_FLAGS_ENABLE_LTO  := 1
self_EX_FLAGS_ENABLE_PGO  := 0
self_EX_FLAGS_EXTERNAL_SYMLINK  := PATH LIBDIR CMSSW_SEARCH_PATH
self_EX_FLAGS_LLVM_ANALYZER  := llvm-analyzer
self_EX_FLAGS_NO_EXTERNAL_RUNTIME  := LD_LIBRARY_PATH PATH CMSSW_SEARCH_PATH
TOOLS_OVERRIDABLE_FLAGS  +=CPPDEFINES CXXFLAGS FFLAGS CFLAGS CPPFLAGS LDFLAGS CUDA_FLAGS CUDA_LDFLAGS LTO_FLAGS PGO_FLAGS ROCM_FLAGS ROCM_LDFLAGS
self_EX_FLAGS_SCRAM_TARGETS  := haswell sandybridge nehalem
self_EX_FLAGS_SKIP_TOOLS_SYMLINK  := cxxcompiler ccompiler f77compiler gcc-cxxcompiler gcc-ccompiler gcc-f77compiler llvm-cxxcompiler llvm-ccompiler llvm-f77compiler llvm-analyzer-cxxcompiler llvm-analyzer-ccompiler icc-cxxcompiler icc-ccompiler icc-f77compiler x11 dpm
self_EX_FLAGS_SYMLINK_DEPTH_CMSSW_SEARCH_PATH  := 2
self_ORDER := 20000
IS_PATCH:=

