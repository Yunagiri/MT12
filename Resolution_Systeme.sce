//A = [1 3 4 ; 2 5 5 ; 1 2 3 ];
//B = [ 3; 7 ; 8];

A = [ 7 -3 -2; -3 3 1; -2 1 4 ];
B = [3;8;7];


function [L,U]=Decomp_LU(A)
    n = length(size(A,1));
    for k = 1:(n-1)     //Cette ligne indique l'étape
        for i = (k+1):n
            A(i,k) = (A(i,k))/(A(k,k));     //Cette ligne pose le pivot
            for j = (k+1):n 
                A(i,j) = A(i,j) - A(i,k)*A(k,j);    //L'opération d'élimination de Gauss
            end
        end
    end
    [L] = tril(A,-1)+eye(A);    //Matrice L triangulaire inférieure composée d'1 diagonale de 1
    [U] = triu(A);      //Matrice U triangulaire sup, représente l'élimination de gauss.
endfunction


function x=res_LU1(A,B)
    [L,U] = Decomp_LU(A);
    y = B \ L;          //Ly = b
    x = y \ U;          //Ux = y
endfunction
disp(x)







