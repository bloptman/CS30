function off = Off(A)

% OFF Computes the function off(A) for A.
%   Computes the function off(A) for A.

% Args:
%    A (ndarray): A real matrix of any dimension n x m 

% Returns:
%    off (float): Value of the function off(A)

sum = 0;
dim = size(A);
for ii = 1:dim(1)
    for jj = 1:dim(1)
        if ii ~= jj
            sum = sum + (A(ii,jj)*A(ii,jj));
        end
    end
end

off = sqrt(sum);

end

