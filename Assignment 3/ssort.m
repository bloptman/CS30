function output = ssort(data, direction)
%SSORT Selection Sort data in ascending order.
%Function SSORT sorts numeric data in ascending order.

N = length(data);

% If we have less than two arguments for the function call
% we will by default choose to sort the data in ascending order.

if nargin < 2
    direction = "up";
end

% Sorting in ascending order...
if(direction == "up")
    for ii = 1:N-1
        iptr = ii;
        for jj = ii+1:N
            if data(jj) < data(iptr)
                iptr = jj;
            end
        end

    if ii ~= iptr 
        temp = data(ii);
        data(ii) = data(iptr);
        data(iptr) = temp;
    end

    end

% Sorting in descending order...
elseif direction == "down"
    for ii = 1:N-1
        iptr = ii;
        for jj = ii+1:N
            if data(jj) > data(iptr)
                iptr = jj;
            end
        end

    if ii ~= iptr 
        temp = data(ii);
        data(ii) = data(iptr);
        data(iptr) = temp;
    end

    end
 
% If we are not given a valid sorting direction then we
% cannot process the data further and we throw an error.
else
    error("Invalid sorting direction!")
end

output = data;

end