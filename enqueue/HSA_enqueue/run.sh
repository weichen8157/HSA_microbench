#!/bin/bash

HSAIL=./hsail

main()	{
	FILES=$(cd ${HSAIL} && find *hsail)
	
	for file in ${FILES};do
		cp ${HSAIL}/${file} ./vector_copy.hsail
		/opt/amd/cloc/bin/hsailasm ./vector_copy.hsail -o ./vector_copy.brig
		./vector_copy >> log
        echo ${file}>>record
		grep -r "Execution Period*" log >> record
        grep -r "enqueue kernel=*" log >> record
        grep -r "out=*" log >> record
        grep -r "*VALID*" log >> record

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
