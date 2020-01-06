//DINH Viet Phuong

function [L,U] = DecompLU(A)
    n = size(A,1);
    L = zeros(3,3);
    U = zeros(3,3);
    U(1,1:n) = A(1,:);
    L(1:n,1) = A(:,1)/A(1,1);
    S1 = 0;
    S2 = 0;

    for i = 2:n
        U(i,i) = A(1,1) - L(i,1:i-1)*U(1:i-1,i);
            for j = i+1:n
                for k = 1:i-1
                    S1 = S1 + L(i,k)*U(k,j);
                    S2 = S2 + L(j,k)*U(k,i);
                end
                U(i,j) = A(i,j) - S1;
                L(j,i) = (A(j,i) - S2)/U(i,i);
            end
    end
endfunction

//Code Scilab de test à entrer dans la console 

//[L,U] = DecompLU(floor(10*rand(3)-5));

A = [ 7 -3 -2; -3 3 1; -2 1 4 ];

// [L1,U1] = DecompLU(A);

// A2 = [5 -3 1 -1; -3 4 -1 1; 1 -1 6 -1; -1 1 -1 5];

//[L2,U2] = DecompLU(A2);


B = [3;8;7];

function [X]=Res_sys(A,B)
    [L,U] = DecompLU(A);
    y = B \ L;          //Ly = b
    X = y \ U;          //Ux = y
endfunction

[X] = Res_sys(A,B)
