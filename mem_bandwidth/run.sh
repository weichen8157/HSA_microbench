#!/bin/bash

TEST_SET=./test_set

main()	{
	FILES=$(cd ${TEST_SET} && find *hsail)
	
	for file in ${FILES};do
		cp ${TEST_SET}/${file} ./vector_copy.hsail
		/opt/amd/cloc/bin/hsailasm ./vector_copy.hsail -o ./vector_copy.brig
		./vector_copy >> log
        echo ${file}>>record
		grep -r "Execution Period*" log >> record
		rm vector_copy.hsail
        rm vector_copy.brig
		rm log
	done
	cat record
	rm record
}
main 
