init(); 
reset(symengine); 
display('Section 1 finding transfer function'); 
syms s R1 L1 C1 ZL ZC ZP symTF 
[R1, L1, C1]=solve(R1==2.0, L1==5.0, C1==2.0, R1, L1, C1)
[ZL, ZC]=solve(ZL==s*L1, ZC==1/(s*C1),ZL,ZC)
[ZP]=solve(ZP==R1*ZL/(R1+ZL),ZP)
[symTF]=solve(symTF==ZP/(ZC+ZP), symTF)

[symNum,symDen] = numden(symTF) %Get num and den of Symbolic TF
num = sym2poly(symNum)    %Convert Symbolic num to polynomial
den = sym2poly(symDen)    %Convert Symbolic den to polynomial
TF = tf(num,den) %makes a transfer function


[yi,t]=impulse(TF); %creates step response showing damping
make_plot(t, yi, 'section 2 impulse response ','t','yi');
