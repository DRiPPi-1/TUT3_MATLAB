clear
marks = [65 78 81 40 50];
markaverage = findaverage(marks)
function av = findaverage(marks)
    nsize = size(marks)
    n = nsize(2)
    sum = 0;;
    for i = 1:n
        sum = sum + marks(i);
    end
    av = sum/n;
end