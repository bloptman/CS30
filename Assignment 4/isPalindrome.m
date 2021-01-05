function output = isPalindrome(word)
%ISPALINDROME Reports whether an inputed word is a palindrome or not.
%   Recurssively adds up the digits of an inputed integer.

    if length(word) <= 1
        output = true;   
    
    else
    firstLetter = word(1);
    lastLetter = word(length(word));
        
        if firstLetter == lastLetter
            shorterWord = word(2:length(word)-1);
            output = isPalindrome(shorterWord); 

        else
            output = false;
            return
        end
    end
end
    
        
        