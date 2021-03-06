init(); 
reset(symengine); 
display('Section 1 finding transfer function'); 
syms s R1 L1 C1 ZL ZC ZP symTF 
[R1, L1, C1]=solve(R1==2, L1==5, C1==2, R1, L1, C1)
[ZL, ZC]=solve(ZL==s*L1, ZC==1/(s*C1),ZL,ZC)
[ZP]=solve(ZP==R1*ZL/(R1+ZL),ZP)
[symTF]=solve(symTF==ZP/(ZC+ZP), symTF)

[symNum,symDen] = numden(symTF) 
num = sym2poly(symNum)
den = sym2poly(symDen) 
TF = tf(num,den)

roots(den)

[yi,t] = impulse(TF);
make_plot(t,yi, 'section 2 impulse response', 't','yi'); 

