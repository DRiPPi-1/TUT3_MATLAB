n=8;
product=1;
fprintf('%4s %7s \n','n','n!')
for i=1:n+1
    formatSpec = '   %d      %d \n';    
    fprintf(formatSpec,i-1,product);
    product=product*i;
end