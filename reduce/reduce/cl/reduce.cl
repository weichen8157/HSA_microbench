__kernel void vector_copy(__global int * in, __global int *out,const int iter,const int element) {
    
    int id = get_global_id(0);
    int worksize = get_global_size(0);
    int i;
    
    for(i=worksize;i>=1;i/=2)
    {
        if(out[id]<out[id+i])
            out[id]=out[id+i];
              
    }
    
}

