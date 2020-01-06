tic
function [D] = determinant(A)
    n = length(A(:,1));
    if n == 1 then
        D = A
    else
        D = 0;
        for j = 1:n
            B = A
            B(:,j) = []     //Tronquer la 1ère ligne
            B(1,:) = []     //Tronquer la j ème colonne
            D = D + determinant(B)*A(1,j)*(-1)^(1+j);
            end
        end
endfunction
toc
