SG_PATH=/u/weijliu

export LD_PRELOAD=$SG_PATH/ShadowGuard/thirdparty/dyninst-10.1.0/install/lib/libdyninstAPI_RT.so:$SG_PATH/ShadowGuard/thirdparty/libunwind/install/lib/libunwind.so
export LD_LIBRARY_PATH=.:$SG_PATH/ShadowGuard/thirdparty/dyninst-10.1.0/install/lib:$SG_PATH/ShadowGuard/thirdparty/libunwind/install/lib:$LD_LIBRARY_PATH
export DYNINSTAPI_RT_LIB=$SG_PATH/ShadowGuard/thirdparty/dyninst-10.1.0/install/lib/libdyninstAPI_RT.so
