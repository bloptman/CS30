function output = sumDigits2(x)
%SUMDIGITS Adds up all the digits of an inputed integer.
%   Recurssively adds up the digits of an inputed integer.
%   Does not split a number into an array of its digits!

    if x == 0
        output = 0;
    else
        y = mod(x,10);
        z = floor(x/10);
        output = y + sumDigits2(z);
    end
end

