int fun(int in)
{
	int i,sum;
	for(i=0;i<1000;i++)
		sum+=in;
	return sum;
}

__kernel void vector_copy(__global int * in, __global int *out,const int iter,const int element) {
    int id = get_global_id(0);
	
	if(id%64==0)
		out[id]=fun(in[id]);
	else if(id%64==1)
		out[id]=fun(in[id]);
	else if(id%64==2)
		out[id]=fun(in[id]);
	else if(id%64==3)
		out[id]=fun(in[id]);
	else if(id%64==4)
		out[id]=fun(in[id]);
	else if(id%64==5)
		out[id]=fun(in[id]);
	else if(id%64==6)
		out[id]=fun(in[id]);
	else if(id%64==7)
		out[id]=fun(in[id]);
	else if(id%64==8)
		out[id]=fun(in[id]);
	else if(id%64==9)
		out[id]=fun(in[id]);
	else if(id%64==10)
		out[id]=fun(in[id]);
	else if(id%64==11)
		out[id]=fun(in[id]);
	else if(id%64==12)
		out[id]=fun(in[id]);
	else if(id%64==13)
		out[id]=fun(in[id]);
	else if(id%64==14)
		out[id]=fun(in[id]);
	else if(id%64==15)
		out[id]=fun(in[id]);
	else if(id%64==16)
		out[id]=fun(in[id]);
	else if(id%64==17)
		out[id]=fun(in[id]);
	else if(id%64==18)
		out[id]=fun(in[id]);
	else if(id%64==19)
		out[id]=fun(in[id]);
	else if(id%64==20)
		out[id]=fun(in[id]);
	else if(id%64==21)
		out[id]=fun(in[id]);
	else if(id%64==22)
		out[id]=fun(in[id]);
	else if(id%64==23)
		out[id]=fun(in[id]);
	else if(id%64==24)
		out[id]=fun(in[id]);
	else if(id%64==25)
		out[id]=fun(in[id]);
	else if(id%64==26)
		out[id]=fun(in[id]);
	else if(id%64==27)
		out[id]=fun(in[id]);
	else if(id%64==28)
		out[id]=fun(in[id]);
	else if(id%64==29)
		out[id]=fun(in[id]);
	else if(id%64==30)
		out[id]=fun(in[id]);
	else if(id%64==31)
		out[id]=fun(in[id]);
	else if(id%64==32)
		out[id]=fun(in[id]);
	else if(id%64==33)
		out[id]=fun(in[id]);
	else if(id%64==34)
		out[id]=fun(in[id]);
	else if(id%64==35)
		out[id]=fun(in[id]);
	else if(id%64==36)
		out[id]=fun(in[id]);
	else if(id%64==37)
		out[id]=fun(in[id]);
	else if(id%64==38)
		out[id]=fun(in[id]);
	else if(id%64==39)
		out[id]=fun(in[id]);
	else if(id%64==40)
		out[id]=fun(in[id]);
	else if(id%64==41)
		out[id]=fun(in[id]);
	else if(id%64==42)
		out[id]=fun(in[id]);
	else if(id%64==43)
		out[id]=fun(in[id]);
	else if(id%64==44)
		out[id]=fun(in[id]);
	else if(id%64==45)
		out[id]=fun(in[id]);
	else if(id%64==46)
		out[id]=fun(in[id]);
	else if(id%64==47)
		out[id]=fun(in[id]);
	else if(id%64==48)
		out[id]=fun(in[id]);
	else if(id%64==49)
		out[id]=fun(in[id]);
	else if(id%64==50)
		out[id]=fun(in[id]);
	else if(id%64==51)
		out[id]=fun(in[id]);
	else if(id%64==52)
		out[id]=fun(in[id]);
	else if(id%64==53)
		out[id]=fun(in[id]);
	else if(id%64==54)
		out[id]=fun(in[id]);
	else if(id%64==55)
		out[id]=fun(in[id]);
	else if(id%64==56)
		out[id]=fun(in[id]);
	else if(id%64==57)
		out[id]=fun(in[id]);
	else if(id%64==58)
		out[id]=fun(in[id]);
	else if(id%64==59)
		out[id]=fun(in[id]);
	else if(id%64==60)
		out[id]=fun(in[id]);
	else if(id%64==61)
		out[id]=fun(in[id]);
	else if(id%64==62)
		out[id]=fun(in[id]);
	else if(id%64==63)
		out[id]=fun(in[id]);
}

