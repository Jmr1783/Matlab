init(); 
reset(symengine); 

display('Section 4 finding transfer function'); 
syms s R1 L1 C1 ZL ZC ZP symTF
[R1, L1, C1]=solve(R1==1, L1==1, C1==1, R1, L1, C1)
[ZL, ZC]=solve(ZL==s*L1, ZC==1/(s*C1),ZL,ZC)

[symTF]=solve(symTF==ZC/(R1+ZL+ZC), symTF)

[symNum,symDen] = numden(symTF) %Get num and den of Symbolic TF
num = sym2poly(symNum)    %Convert Symbolic num to polynomial
den = sym2poly(symDen)    %Convert Symbolic den to polynomial
TF =tf(num,den) %makes a transfer function

[yi,t] = step(TF);
make_plot(t,yi, 'section 4 underdamped ', 't','yi'); 


%----------------------------------------------------------

display('Section 4 finding transfer function'); 
syms s R1 L1 C1 ZL ZC ZP symTF
[R1, L1, C1]=solve(R1==1, L1==1, C1==5, R1, L1, C1)
[ZL, ZC]=solve(ZL==s*L1, ZC==1/(s*C1),ZL,ZC)

[symTF]=solve(symTF==ZC/(R1+ZL+ZC), symTF)

[symNum,symDen] = numden(symTF) %Get num and den of Symbolic TF
num = sym2poly(symNum)    %Convert Symbolic num to polynomial
den = sym2poly(symDen)    %Convert Symbolic den to polynomial
TF =tf(num,den) %makes a transfer function

[yi,t] = step(TF);
make_plot(t,yi, 'section 4 overdamped ', 't','yi'); 