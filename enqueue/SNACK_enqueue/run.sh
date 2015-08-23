#!/bin/bash

HSA_RUNTIME_PATH=/opt/hsa
HSA_LLVM_PATH=/opt/amd/cloc/bin
CL=./cl

main()	{
	FILES=$(cd ${CL} && find *cl)
	
	for file in ${FILES};do
		cp ${CL}/${file} ./vector_copy.cl
		$HSA_LLVM_PATH/snack.sh -q -c vector_copy.cl
        g++ -o vector_copy vector_copy.o VectorCopy.cpp -L $HSA_RUNTIME_PATH/lib -lhsa-runtime64
        ./vector_copy >> log
        echo ${file}>>record
		grep -r "Execution Period*" log >> record
        grep -r "enqueue kernel=*" log >> record
        grep -r "ns/enqueue*" log >> record
        grep -r "PASS" log >> record
        grep -r "INVALID*" log >> record

        sleep 1
        echo -e "" >> record
		rm vector_copy.cl
        rm vector_copy.h
        rm vector_copy.o
		rm log
        mv \&* isa/${file}.isa
	done
	cat record
	rm record
}
main 
