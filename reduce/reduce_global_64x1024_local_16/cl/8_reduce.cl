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
        for(i=0;i<worksize;i+=8)
        {
            if(out[worksize+1]<out[i])
                out[worksize+1]=out[i];
        }       
    }

    if(id == 1)
    {
        for(i=1;i<worksize;i+=8)
        {
            if(out[worksize+2]<out[i])
                out[worksize+2]=out[i];
        }       
    }
    if(id == 2)
    {
        for(i=2;i<worksize;i+=8)
        {
            if(out[worksize+3]<out[i])
                out[worksize+3]=out[i];
        }       
    }

    if(id == 3)
    {
        for(i=3;i<worksize;i+=8)
        {
            if(out[worksize+4]<out[i])
                out[worksize+4]=out[i];
        }       
    }
    if(id == 4)
    {
        for(i=4;i<worksize;i+=8)
        {
            if(out[worksize+5]<out[i])
                out[worksize+5]=out[i];
        }       
    }

    if(id == 5)
    {
        for(i=5;i<worksize;i+=8)
        {
            if(out[worksize+6]<out[i])
                out[worksize+6]=out[i];
        }       
    }
    if(id == 6)
    {
        for(i=6;i<worksize;i+=8)
        {
            if(out[worksize+7]<out[i])
                out[worksize+7]=out[i];
        }       
    }

    if(id == 7)
    {
        for(i=7;i<worksize;i+=8)
        {
            if(out[worksize+8]<out[i])
                out[worksize+8]=out[i];
        }       
    }

    barrier(CLK_GLOBAL_MEM_FENCE);
    
    if(id == 8)
    {
        for(i=1;i<=8;i++)
        {
            if(out[worksize]<out[worksize+i])
                out[worksize]=out[worksize+i];
        }
    }
}

