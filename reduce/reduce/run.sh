#!/bin/bash

TEST_SET=./hsail

main()	{
	FILES=$(cd ${TEST_SET} && find *hsail)
	
	for file in ${FILES};do
		cp ${TEST_SET}/${file} ./vector_copy.hsail
		/opt/amd/cloc/bin/hsailasm ./vector_copy.hsail -o ./vector_copy.brig
		./vector_copy >> log
        echo ${file}>>record
		grep -r "Execution Period*" log >> record
        grep -r "FAIL*" log >> record
		rm vector_copy.hsail
        rm vector_copy.brig
		rm log

        mv \&* isa/${file}.isa
	done
	cat record
	rm record
}
main 
