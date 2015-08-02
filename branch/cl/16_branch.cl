int fun(int * in)
{
	int i,sum;
	for(i=0;i<1000;i++)
		sum+=in;
	return sum;
}

__kernel void vector_copy(__global int * in, __global int *out,const int iter,const int element) {
    int id = get_global_id(0);
	
	if(id%16==0)
		out[id]=fun(in[id]);
	else if(id%16==1)
		out[id]=fun(in[id]);
	else if(id%16==2)
		out[id]=fun(in[id]);
	else if(id%16==3)
		out[id]=fun(in[id]);
	else if(id%16==4)
		out[id]=fun(in[id]);
	else if(id%16==5)
		out[id]=fun(in[id]);
	else if(id%16==6)
		out[id]=fun(in[id]);
	else if(id%16==7)
		out[id]=fun(in[id]);
	else if(id%16==8)
		out[id]=fun(in[id]);
	else if(id%16==9)
		out[id]=fun(in[id]);
	else if(id%16==10)
		out[id]=fun(in[id]);
	else if(id%16==11)
		out[id]=fun(in[id]);
	else if(id%16==12)
		out[id]=fun(in[id]);
	else if(id%16==13)
		out[id]=fun(in[id]);
	else if(id%16==14)
		out[id]=fun(in[id]);
	else if(id%16==15)
		out[id]=fun(in[id]);
}

