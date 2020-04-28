syms a x y theta kd k1 k2 k3 k4;

k=10;
kd=[1:0.001:1000];

h=1./kd;
theta=1./(1+kd);
a=(1-(5.*theta));
b=-(1+k)+((1-k).*5.*theta);
c=5.*theta.*k;


x=(-b-sqrt((b.^2)-(4.*a.*c)))./(2.*a);

d=(1-10.*x);
e=-(1+k)+((1-k).*10.*x);
f=10.*x.*k;


y=(-e-sqrt(e.^2-4.*d.*f))./(2.*d);

ylabel('Dimensionless qty');
xlabel('1/kd')
figure(1)
hold on
plot(h,theta,'r'); 

plot(h,x,'b');

plot(h,y,'g');

grid on;












