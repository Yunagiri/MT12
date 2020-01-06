function [L,U]=Decomp_LU(A)
    n = length(A(:,1)); 
    for k = 1:(n-1)
        for i = (k+1):n
            A(i,k) = A(i,k)/A(k,k); //Opération sur lignes
        end
        for j = (k+1):n 
            A(i,j) = A(i,j) - A(i,k)*A(k,j); //Opération sur colonnes
        end
    end
    [L] = tril(A,-1)+eye(A);
    [U] = triu(A);
endfunction

function [A] = verif(L,U)
    A = L*U;
endfunction
