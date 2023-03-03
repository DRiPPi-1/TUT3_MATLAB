Steel = xlsread('WorldSteelProduction.xlsx');
plot(1:12,Steel(2:end,:))
legend('2005','2006','2007','2008','2009','2010','Location','best')
disp('Select the 2009 time when production is 100,000.');
[t,l] = ginput(1) % mouse click
fprintf('Level %6.1f occurs when %3.1f months into 2009.\n',l,t)