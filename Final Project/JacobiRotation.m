function [A_transformed,J] = JacobiRotation(A,j,k)

% JACOBIROTATION Performs the Jacobi rotation algorithm on the (j,k)th entry
% of a real symmetric matrix A.

% Computes the Jacobi rotation matrix J for the j,kth and k,jth entry of A. 

%  Args:
%    A (ndarray): Real n x n symetric matrix
%    j (int): Index of row of A 
%    k (int): Index of colum of A 

%  Returns: 
%    A_transformed (ndarray): Real n x n symetric matrix thats j,kth and k,jth entries are zero. Similar to A
%    J (ndarray): Real n x n rotation matrix that transforms A into A_transform via a similarity transformation

if A(j,k) ~= 0
    
    tau = (A(k,k)-A(j,j))/(2*A(j,k));
    
    if tau >= 0
        t = 1/(tau + sqrt(1+(tau*tau)));
    else
        t = 1/(tau - sqrt(1+(tau*tau)));
    end
    
c = 1/sqrt(1+(t*t));
s = t*c;

else
    c = 1;
    s = 0;
end

dim = size(A);
J = eye(dim);   
J(j,j) = c;
J(j,k) = s;
J(k,j) = -s;
J(k,k) = c;

AJ = A*J;
J_t = transpose(J);
A_transformed = J_t*AJ;

end

