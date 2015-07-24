# Introduction
This is a micro benchmark for HSA platform

#Execute
1. run `run.sh` in dir

#Problem
There are still some problem needed to be fixed
1. why global_ld & const_ld cannot execute successfully.
2. why speed of global,local,private,const 

#Result
1. branch:Penalty of branch obviously caused only when local worksize is small.
* change `LOCAL_SIZE` bigger then see the result



