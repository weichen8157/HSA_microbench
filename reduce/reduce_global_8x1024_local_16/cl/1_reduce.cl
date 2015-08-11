__kernel void vector_copy(__global int * in, __global int *out,const int iter,const int element) {
    
    int id = get_global_id(0);
    int worksize = get_global_size(0);
    int i,zone=element/worksize,final=0;
    
    for(i=0;i<zone;i++)
    {
        if(out[id]<in[id*zone+i])
            out[id]=in[id*zone+i];
    }
    barrier(CLK_GLOBAL_MEM_FENCE);
    
    if(id == 0)
    {
        for(i=0;i<worksize;i++)
        {
            if(out[worksize]<out[i])
                out[worksize]=out[i];
        }       
    }

}

