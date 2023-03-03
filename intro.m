clear
x = [1 2 3 4 5];
f = [1 4 9 16 25];
area = 0
for i = 1:4
    area = area + ((f(i)+f(i+1))/2)*(x(i + 1) - x(i))
end