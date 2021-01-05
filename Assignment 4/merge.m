function output = merge(arr1, arr2)
%MERGE Merges two already sorted arrays together.
%   Merges two already sorted arrays together.

    if isempty(arr1)
        output = arr2;
        
    elseif isempty(arr2)
        output = arr1;
        
    else
        if arr1(1) <= arr2(1)
            output = [arr1(1) merge(arr1(2:end), arr2)];
        else
            output = [arr2(1) merge(arr1, arr2(2:end))];
            
        end
        
    end
    
end



