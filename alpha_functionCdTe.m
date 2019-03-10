function alpha=alpha_functionCdTe(lamda)
alpha_range=1400;
a1=-.0010966719;
b1=-.53140664;
c1=-.0093097872;
d1=.094201344;
e1=-.074630772;
f1=-.0055708837;
g1=-.57633198;

a2=(3.3856284e11-11378);
b2=4449584.7;
c2=-2.6395218e10;
d2=-1.1151752e12;
e2=1.0977159e14;

a3=-32.022815;
b3=989164.98;
% c3=-10944126;
% d3=3533.6909;
% e3=1.4761834e11;

for i=1:(alpha_range-302+1)
    x=lamda(i);
    if lamda(i)<=777
        
	alpha(i)=(a1+c1*log(x)+e1*(log(x)).^2+g1*(log(x)).^3)./(1+b1*log(x)+d1*(log(x)).^2+f1*(log(x)).^3);
    elseif lamda(i)>777 && lamda(i)<836;
        alpha(i)=a2+b2*x+c2.*log(x)+d2./log(x)+(e2*log(x))./(x.^2);
    elseif lamda(i)>=836 && lamda(i)<900;
        alpha(i)=exp(a3+b3./(x.^1.5));
    else
        alpha(i)=1;
    end
end