__kernel void vector_copy(__global int * in, __global int *out,const int iter,const int element) {
    
    __local int array[8*1024*1024];
    int i,j,temp=1; 
    for (i = 0; i < iter; i++){
        for(j = 0;j<element;j++) {
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
                temp = array[j];
 
 
                *out +=temp;
       }
        
    }        

    
    
}

