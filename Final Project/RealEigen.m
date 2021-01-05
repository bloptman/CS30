function [d, R] = RealEigen(A, tolerance)

%REALEIGEN Computes the eigenvalues and eigenvectors of a real symmetric matrix A.
%  Computes the eigenvalues and eigenvectors of a real symmetric matrix A to within some specified
%  tolerance.

%  Args:
%    A (ndarray): Real n x n symetric matrix
%    tolerance (float): the relative precison 

%  Returns:
%    d (ndarray): n x 1 array of eigenvalues of A
%    R (ndarray): n x n orthogonal matrix of the eigenvectors of A where the eigenvector and its correspoding eigenvalue share the same column index

dim = size(A);
R = eye(dim(1));
delta = tolerance*norm(A);

while(Off(A) > delta)
    disp(Off(A))
    for pp = 1:(dim(1)-1)
        for qq = pp+1:dim(1)
            
            [A, J] = JacobiRotation(A,pp,qq);
            R = R*J;
        end
    end
end

d = diag(A);

end

