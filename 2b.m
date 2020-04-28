
I1=linspace(0.001,1000,10);
I2=linspace(0.001,1000,10);

l=length(I1); k=35;

A_soln = zeros(length(I1),length(I2));
for i = 1:l
    for j = 1:l
        
        i1=I1(i);
        i2=I2(j);

eqn= 100==a+( (5*a)./(k*i1 + a.*i1 + k+a))+( (5*a)/(k*i2 + a*i2 + k+a));

    A=solve(eqn,a);
    A=double(A);
    A=A(A>=0);
    
    
     
    A_soln(i,j)=A;
    j=j+1;
    end
    i=i+1;
end




contour3(log(I1),log(I2),A_soln,200)

title('Response for K = 35')
xlabel('Inhibitor 1')
ylabel('Inhibitor 2')
zlabel('[A]')


