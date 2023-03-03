clearvars
format long
%Runge Kutta solution
% total steps
prompt = "Enter total steps: ";
Total_steps = input(prompt);
% step size
h=0.1;
% counter
n=1;
x(n)=0;
y(n)=1;
fprintf('%2s %4s %4s %4s %4s %4s %8s\n','n','x','k1','k2','k3','k4','y')
 formatSpec = '%d %4.2f  %28.3f \n';    
fprintf(formatSpec,n,x(n),y(n))
% runge kutta steps
for n = 1:Total_steps
    k1=f(x(n),y(n));
    k2=f(x(n)+h/2.0,y(n)+h/2.0*k1);
    k3=f(x(n)+h/2.0,y(n)+h/2.0*k2);
    k4=f(x(n)+h,y(n)+h*k3);
    y(n+1)=y(n)+h/6.0*(k1+2*k2+2*k3+k4);
    x(n+1)=x(n)+h;
formatSpec = '%d %4.2f %6.4f %6.4f %6.4f %6.4f  %8.4f \n';  
fprintf(formatSpec,n,x(n+1),k1,k2,k3,k4,y(n+1))
end    
plot(x,y)

function fx = f(x,y)
   % prompt = "Enter ODE: ";
   fx = 2*x - y;
end