I=imread("input.bmp");
i=1;
while(I(i,50)==0)
i++;
endwhile
for k=i+21:i+31;
	for j=1:100;
    I(k,j)=0;
	endfor
endfor
a=150;
while(a<=750)
	b=1;
	while(I(b,a)==0)
	b++;
	endwhile
	if(b>i)
	p=i+21;
	q=b+31;
	else
	p=b+21;
	q=i+31;
	endif
	for c=p:q;
		for d=j+1:j+11;
			I(c,d)=0;
			d++;
		endfor
		c++;
	endfor
	if(a==750)
	p=800;
	else
	p=j+111;
	endif
	for g=j+1:p;
		for h=b+21:b+31;
		I(h,g)=0;
		h++;	
		endfor
		g++;
	endfor
	i=b;
	j=j+100;
	a=a+100;
endwhile
for u=1:600
I(u,801)=0;
endfor
imshow(I)
imwrite(I,'output.bmp');