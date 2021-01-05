function [d,U] = HermitianEigen(H,tol)

%HERMITIANEIGEN Returns the eigenvalues and eigenvectors of a hermitian matrix H.
%   Returns the eigenvalues and eigenvectors of a hermitian matrix H.

%  Args:
%    H (ndarray): n x n hermitian matrix
%    tolerance (float): the relative precison 

%  Returns:
%    d (ndarray): array of the eigenvalues of H
%    U (ndarray): n x n unitary matrix of the eigenvectors of H where the eigenvector and it's corresponding eigenvalue share the same column index (ndarray)
  
[d,U] = ComplexEigen(H,tol);
  
end

