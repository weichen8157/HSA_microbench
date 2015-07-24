# Introduction
This is a micro benchmark for HSA platform.

#Execute
1. Run `run.sh` in dir.

#Problem
There are still some problem needed to be fixed.
1. Why global_ld & const_ld cannot execute successfully.
2. Why speed of global,local,private,const.
3. local_ld problems.

#Result
1. Branch:Penalty of branch obviously caused only when local worksize is small.
* Change `LOCAL_SIZE` bigger then see the result.



