function output = countArray(arr,tar)
%COUNTARRAY Counts the number of times a particular value appears in an array.
%   Counts the number of times a particular value appears in an array.

    if isempty(arr)
        output = 0;
        
    elseif length(arr) == 1
        if arr(1) == tar
            output = 1;
        else
            output = 0;
        end
        
    else
        if arr(end) == tar
            output = 1 + countArray(arr(1:end-1),tar);
        else
            output = countArray(arr(1:end-1),tar);
        end
    end
end

