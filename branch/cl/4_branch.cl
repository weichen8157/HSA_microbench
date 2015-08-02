int fun(int * in)
{
	int i,sum;
	for(i=0;i<1000;i++)
		sum+=in;
	return sum;
}

__kernel void vector_copy(__global int * in, __global int *out,const int iter,const int element) {
    int id = get_global_id(0);
	
	if(id%4==0)
		out[id]=fun(in[id]);
	else if(id%4==1)
		out[id]=fun(in[id]);
	else if(id%4==2)
		out[id]=fun(in[id]);
	else if(id%4==3)
		out[id]=fun(in[id]);

}

