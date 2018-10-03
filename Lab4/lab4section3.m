init(); 
reset(symengine); 
display('Section 3a finding transfer function'); 
syms s R2 L2 C2 ZL ZC ZP symTF 
[L2]=solve(L2==1,L2);
[ZL, ZC]=solve(ZL==s*L2, ZC==1/(C2*s),ZL,ZC)
[symTF]=solve(symTF==ZC/(R2+ZL+ZC), symTF)
