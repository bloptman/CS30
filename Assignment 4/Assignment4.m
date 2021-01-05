% CS30 Assignment #4
% Name: Bradon Loptman
% UID: 1518851
% Due: 11/11/20

%% Testing isPalindrome function....

disp(isPalindrome('')) % true
disp(isPalindrome('a')) % true
disp(isPalindrome('aa')) % true
disp(isPalindrome('aaba')) % false
disp(isPalindrome('tacocat')) % true

%% Testing the sumDigits function...

disp(sumDigits2(56)) % Generates 11
disp(sumDigits2(223)) % Generates 7
disp(sumDigits2(1000)) % Generates 1

%% Testing the countArray function...
% It turns out there is a name conflict with named the function count as in
% the assignment.

disp(countArray([1, 2, 4, 1, 2, 1], 1)) % Generates 3
disp(countArray([1, 2, 4, 1, 2, 1], 2)) % Generates 2
disp(countArray([1, 2, 4, 1, 2, 1], 4)) % Generates 1
disp(countArray([1, 2, 4, 1, 2, 1], 9000)) % Generates 0

%% Testing the merge function....

disp(merge([2,5,6],[1,6,7,10])) % Generates [1, 2, 5, 6, 6, 7, 10]
disp(merge([1,3,5,7,9],[2,4,6])) % Generates [1, 2, 3, 4, 5, 6, 7, 9]
disp(merge([],[4,7,10])) % Generates [4,7,10]