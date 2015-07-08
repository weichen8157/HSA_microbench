int fun(int in)
{
	int i,sum;
	for(i=0;i<1000;i++)
		sum+=in;
	return sum;
}

__kernel void vector_copy(__global int * in, __global int *out,const int iter,const int element) {
    int id = get_global_id(0);
	
	if(id==0)
		out[id]=fun(in[id]);
	else if(id==1)
		out[id]=fun(in[id]);
	else if(id==2)
		out[id]=fun(in[id]);
	else if(id==3)
		out[id]=fun(in[id]);
	else if(id==4)
		out[id]=fun(in[id]);
	else if(id==5)
		out[id]=fun(in[id]);
	else if(id==6)
		out[id]=fun(in[id]);
	else if(id==7)
		out[id]=fun(in[id]);
	else if(id==8)
		out[id]=fun(in[id]);
	else if(id==9)
		out[id]=fun(in[id]);
	else if(id==10)
		out[id]=fun(in[id]);
	else if(id==11)
		out[id]=fun(in[id]);
	else if(id==12)
		out[id]=fun(in[id]);
	else if(id==13)
		out[id]=fun(in[id]);
	else if(id==14)
		out[id]=fun(in[id]);
	else if(id==15)
		out[id]=fun(in[id]);
	else if(id==16)
		out[id]=fun(in[id]);
	else if(id==17)
		out[id]=fun(in[id]);
	else if(id==18)
		out[id]=fun(in[id]);
	else if(id==19)
		out[id]=fun(in[id]);
	else if(id==20)
		out[id]=fun(in[id]);
	else if(id==21)
		out[id]=fun(in[id]);
	else if(id==22)
		out[id]=fun(in[id]);
	else if(id==23)
		out[id]=fun(in[id]);
	else if(id==24)
		out[id]=fun(in[id]);
	else if(id==25)
		out[id]=fun(in[id]);
	else if(id==26)
		out[id]=fun(in[id]);
	else if(id==27)
		out[id]=fun(in[id]);
	else if(id==28)
		out[id]=fun(in[id]);
	else if(id==29)
		out[id]=fun(in[id]);
	else if(id==30)
		out[id]=fun(in[id]);
	else if(id==31)
		out[id]=fun(in[id]);
	else if(id==32)
		out[id]=fun(in[id]);
	else if(id==33)
		out[id]=fun(in[id]);
	else if(id==34)
		out[id]=fun(in[id]);
	else if(id==35)
		out[id]=fun(in[id]);
	else if(id==36)
		out[id]=fun(in[id]);
	else if(id==37)
		out[id]=fun(in[id]);
	else if(id==38)
		out[id]=fun(in[id]);
	else if(id==39)
		out[id]=fun(in[id]);
	else if(id==40)
		out[id]=fun(in[id]);
	else if(id==41)
		out[id]=fun(in[id]);
	else if(id==42)
		out[id]=fun(in[id]);
	else if(id==43)
		out[id]=fun(in[id]);
	else if(id==44)
		out[id]=fun(in[id]);
	else if(id==45)
		out[id]=fun(in[id]);
	else if(id==46)
		out[id]=fun(in[id]);
	else if(id==47)
		out[id]=fun(in[id]);
	else if(id==48)
		out[id]=fun(in[id]);
	else if(id==49)
		out[id]=fun(in[id]);
	else if(id==50)
		out[id]=fun(in[id]);
	else if(id==51)
		out[id]=fun(in[id]);
	else if(id==52)
		out[id]=fun(in[id]);
	else if(id==53)
		out[id]=fun(in[id]);
	else if(id==54)
		out[id]=fun(in[id]);
	else if(id==55)
		out[id]=fun(in[id]);
	else if(id==56)
		out[id]=fun(in[id]);
	else if(id==57)
		out[id]=fun(in[id]);
	else if(id==58)
		out[id]=fun(in[id]);
	else if(id==59)
		out[id]=fun(in[id]);
	else if(id==60)
		out[id]=fun(in[id]);
	else if(id==61)
		out[id]=fun(in[id]);
	else if(id==62)
		out[id]=fun(in[id]);
	else if(id==63)
		out[id]=fun(in[id]);
}

