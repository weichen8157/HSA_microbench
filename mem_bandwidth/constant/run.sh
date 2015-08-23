#!/bin/bash

HSAIL=./hsail

main()	{
	FILES=$(cd ${HSAIL} && find *hsail)
	
	for file in ${FILES};do
		cp ${HSAIL}/${file} ./vector_copy.hsail
		/opt/amd/cloc/bin/hsailasm ./vector_copy.hsail -o ./vector_copy.brig
		./constant >> log
        echo ${file}>>record
		#grep -r "Execution Period*" log >> record
        grep -r "memory size*" log >> record
        grep -r "op_count**" log >> record
        grep -r "nano*" log >> record
        sleep 1
        echo -e "" >> record
		rm vector_copy.hsail
        rm vector_copy.brig
		rm log
        mv \&* isa/${file}.isa
	done
	cat record
	rm record
}
main 
