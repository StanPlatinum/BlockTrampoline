DYNINST_ROOT=/home/weijliu/ShadowGuard/thirdparty/dyninst-10.1.0/install
#DYNINST_ROOT=/home/xm13/projects/liteCFI/thirdparty/dyninst-10.1.0/install

all: BlockTrampoline

BlockTrampoline: BlockTrampoline.cpp
	g++ -g -o BlockTrampoline -O2 -std=c++11 BlockTrampoline.cpp \
		-I$(DYNINST_ROOT)/include \
		-L$(DYNINST_ROOT)/lib \
		-ldyninstAPI -lboost_system \
		-Wl,-rpath='$(DYNINST_ROOT)/lib'

clean:
	rm -f BlockTrampoline FuncSort libcg.so
