%% Function Testing

% Testing the RealEigen function, and by extension the functions
% JacobiRotation and Off as well.

% Note that eigenvectors maybe differ my a constant factor and still be the
% same eigenvector.

%% Testing Real Symmetric Matricies

% It is easy to show that for a diagonal matrix the eigenvalues are the
% same as the entries along the main diagonal. The eigenvectors are just
% the unit vectors i,j,k,.... depending on the dimension of the matrix. 

% It is also important to note that all diagonal matricies are symmetric so
% they can be processed by the Jacobi Algorithm.

A = [5, 0; 0, 6];
tol = .01;

[evals, evecs] = RealEigen(A,tol) % Trivial to verify this is correct by hand.

% Testing on a symmetric matrix that is not diagonal. We can easily verify
% by hand that this matrix has eigenvalues [0, 5, 3]. The eigenvectors are
% not has nice however. We will check the eigenvectors using a built in
% MATLAB function, eig, which we can be reasonably sure is correct.

B = [1, 2, 0; 2, 4, 0; 0, 0, 3];

[evals, evecs] = RealEigen(B,tol) % Can be verified by hand.
[Evecs, Evals] = eig(B) % Comparing the output to our function we see they are the same.

%% Testing Hermitian Matricies

% Testing on a Hermitian matrix, that is a symmetric matrix that can have
% complex elements. These kinds of matracies appear often in the study of
% quantum mechanics.

% Again, we will verify the eigenvalues and eignevecotors using the built
% in function eig.

C = [1, 1-1i; 1+1i, -1];

[evals, evecs] = HermitianEigen(C, tol)
%[Evecs, Evals] = eig(C) % Comparing the output to our function we see they are the same.
%% Testing HPerturbed 

% First we will test to see what HPerturbed says the Hamiltonian is when
% lambda is zero. In this case it should be that of the quantum harmonic
% oscillator.

dim = 3;
lmbda = 0;

H = HPerturbed(dim,lmbda) % If you have studied QM you recognize this as the correct Hamiltonian!

% Testing when lambda is cranked up to one.
lmbda = 1;

H = HPerturbed(dim,lmbda) % You can compute this by hand and see the result is correct.