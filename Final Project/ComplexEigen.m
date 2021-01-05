function [dd_new, U] = ComplexEigen(H,tolerance)

%COMPLEXEIGEN Computes the eigenvalues and eigenvectors of a hermitian matrix H.
%  Computes the eigenvalues and eigenvectors of of a hermitian matrix H to within a specified
%  tolerance.

%  Args:
%    H (ndarray): n x n Hermitian matrix
%    tolerance (float): the relative precison 
  
%  Returns:
%    dd_new (ndarray): n x 1 array of the eigenvalues of H
%    U (ndarray): n x n unitary matrix of the eigenvectors of H where the eigenvector and it's corresponding eigenvalue share the same column index

dim = size(H);

S = real(H);
A = imag(H);

B = [S -A; A, S];

[dd, R] = RealEigen(B,tolerance);


dd_new = zeros(dim(1),1);
R_new = zeros(2*dim(1),dim(1));

[out,dd_indicies] = sort(dd); 
dd_indicies = dd_indicies(1:2:end);

for ii = 1:dim(1)
    dd_new(ii) = dd(dd_indicies(ii));
    R_new(:,ii) = R(:,dd_indicies(ii));
end

u_list = R_new(1:dim(1),:);
v_list = R_new(dim(1)+1:end,:);

U = u_list + v_list*1i;

end

