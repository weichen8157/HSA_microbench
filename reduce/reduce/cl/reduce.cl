__kernel void vector_copy(__global int * in, __global int *out,__global int *gg,const int iter,const int element) {
    
    int id = get_global_id(0);
    int worksize = get_global_size(0);
    int i,temp,temp1;
    temp = id*2;
    temp1 = (id*2)+1;
    for(i=worksize;i>0;i/=2)
    {
     if(id<i)
     {
        if(out[temp]<out[temp1])
               out[temp]=out[temp1];
     }
     temp*=2;
     temp1*=2;
 
        barrier(CLK_GLOBAL_MEM_FENCE);
    }

    
}   

