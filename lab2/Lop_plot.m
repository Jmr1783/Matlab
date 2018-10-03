init();
x=linspace(0,10,1751);
num=[1 0 -16];
ynum=polyval(num,x);
den=[1 -4];
yden=polyval(den,x);
y=ynum./yden;
make_plot(x,y,"(x^2-16)/(x-4)",'x','y')

k=find(isnan(y)); %gives you the array element index
x(k) %displays the x value
%L’Hopital’s rule has us take derivative of top and bottom 
% of (x^2-16)/(x-4) to find the function that gives the correct 
% value of y(k).

%to fix
y(k)=2*x(k);
y(k)
