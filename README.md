# Introduction
This is a micro-benchmark for HSA platform.

# Pre-requests
This sample is modified from the original [CLOC](https://github.com/HSAFoundation/CLOC) sample code.
Please make sure you have set up the HSA environment before using this sample.

#Execute
1. Run `run.sh` in dir.

#Problem
* There are still some problem needed to be fixed.
1. Why global_ld & const_ld cannot execute successfully.(Both ISA are the same)
2. Why speed of memeory bandwidth global,local,private,const doesn't make sense.(HSA runtime dosn't support private segment yet)

#Result
* See the picture in dir. 
1. HSA_enqueue  
    `no_branch` for empty kernel.  
    `vector_copy` for simple kernel just like vector_copy.(To ensure result is accurate)  
![Sample Image](/HSA_enqueue.png?raw=true "Sample Image")  
2. SNACK_enqueue  
    `no_branch` and  `vector_copy` are the same function with HSA_enqueue.  
![Sample Image](/SNACK_enqueue.png?raw=true "Sample Image")  
3. Memory_bandwidth  
    `const` and `global_ld` are not make sense.  
    Private segment is not support in HSA runtime yet.  
![Sample Image](/mem_bandwidth.png?raw=true "Sample Image")  
4. branch  
    Here is micro-bench for branch penalty.  
    Penalty is almost linear.  
![Sample Image](/branch.png?raw=true "Sample Image")  
5. reduce  
    We use a simple exaple `find max` to test reduce.   
![Sample Image](/reduce.png?raw=true "Sample Image")  

#Author
NTU PASLAB

WeiChen Lin : weichen8157@gmail.com
Medicine Yeh: freedomyeh@hotmail.com

Any question can email to us.




