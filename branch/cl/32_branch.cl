int fun(int * in)
{
	int i,sum;
	for(i=0;i<1000;i++)
		sum+=in;
	return sum;
}

__kernel void vector_copy(__global int * in, __global int *out,const int iter,const int element) {
    int id = get_global_id(0);
	
	if(id%32==0)
		out[id]=fun(in[id]);
	else if(id%32==1)
		out[id]=fun(in[id]);
	else if(id%32==2)
		out[id]=fun(in[id]);
	else if(id%32==3)
		out[id]=fun(in[id]);
	else if(id%32==4)
		out[id]=fun(in[id]);
	else if(id%32==5)
		out[id]=fun(in[id]);
	else if(id%32==6)
		out[id]=fun(in[id]);
	else if(id%32==7)
		out[id]=fun(in[id]);
	else if(id%32==8)
		out[id]=fun(in[id]);
	else if(id%32==9)
		out[id]=fun(in[id]);
	else if(id%32==10)
		out[id]=fun(in[id]);
	else if(id%32==11)
		out[id]=fun(in[id]);
	else if(id%32==12)
		out[id]=fun(in[id]);
	else if(id%32==13)
		out[id]=fun(in[id]);
	else if(id%32==14)
		out[id]=fun(in[id]);
	else if(id%32==15)
		out[id]=fun(in[id]);
	else if(id%32==16)
		out[id]=fun(in[id]);
	else if(id%32==17)
		out[id]=fun(in[id]);
	else if(id%32==18)
		out[id]=fun(in[id]);
	else if(id%32==19)
		out[id]=fun(in[id]);
	else if(id%32==20)
		out[id]=fun(in[id]);
	else if(id%32==21)
		out[id]=fun(in[id]);
	else if(id%32==22)
		out[id]=fun(in[id]);
	else if(id%32==23)
		out[id]=fun(in[id]);
	else if(id%32==24)
		out[id]=fun(in[id]);
	else if(id%32==25)
		out[id]=fun(in[id]);
	else if(id%32==26)
		out[id]=fun(in[id]);
	else if(id%32==27)
		out[id]=fun(in[id]);
	else if(id%32==28)
		out[id]=fun(in[id]);
	else if(id%32==29)
		out[id]=fun(in[id]);
	else if(id%32==30)
		out[id]=fun(in[id]);
	else if(id%32==31)
		out[id]=fun(in[id]);

}

