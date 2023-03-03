% Hlumelo Siyo
% Program Name: Average Function
% Date: 03 March 2023
% Course: EMA472S
% Description: In this example we use a function to find the average of 
% values stored in an array

clear
marks = [65 78 81 40 50];
markaverage = findaverage(marks)
function av = findaverage(marks)
    nsize = size(marks)
    n = nsize(2)
    sum = 0;
    for i = 1:n
        sum = sum + marks(i);
    end
    av = sum/n;
end