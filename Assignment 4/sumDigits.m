function output = sumDigits(x)
%SUMDIGITS Adds up all the digits of an inputed integer.
%   Recurssively adds up the digits of an inputed integer.
    
    % Converting integer to an array of its digits.
    x_arr = num2str(x) - '0'; % Doesn't work for integers with more than 2 digits???
    
    % If the array is empty then it has no sum.
    % Should probably throw an error...x
    if length(x_arr) < 1
        output = 0;
        return
    
    % If  the array only has one element the sum of the array
    % is the element itself.
    elseif length(x_arr) == 1
        output = x_arr(1);
        return 
    
    % If the array has more than one element we must make it smaller
    % until it is at the point where it only has one element.
    else
        output = x_arr(length(x_arr)) + sumDigits(x_arr(1:end-1));
        
    end
end

