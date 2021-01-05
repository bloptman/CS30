function coeffs = Coeffs(v)
%COEFFS Summary of this function goes here
%   Detailed explanation goes here

dim = size(v);

coeffs = zeros(1,dim(1));
 
    for ii = 0:(dim(1)-1)
        a = 1/sqrt((2^ii) * factorial(ii) * sqrt(pi));
        coeffs(ii+1) = a * real(v(ii+1));
    end
    
end

