function alpha=alpha_functionCdS(lamda)

alpha_range=1400;
a1=-7.6376406e-6;
b1=3.7028902e-8;

a2=11.612752;
b2=-.0019977111;
c2=-.023207878;

a3=-2242.6821;
b3=9.1550297;
c3=-.00929655;

for i=1:(alpha_range-302+1)
    x=lamda(i);
    if lamda(i)<=474
        alpha(i)=1/(a1+b1*x);
	    elseif lamda(i)>474 && lamda(i)<496;
            alpha(i)=exp((a2+c2*x)/(1+b2*x));
                elseif lamda(i)>=496 && lamda(i)<519;
                    alpha(i)=exp(a3+b3*x+c3*x^2);
                    else
                alpha(i)=1;
    end
end
end