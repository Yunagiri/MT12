clear all
//DINH Viet Phuong

W = [0.5 3 ; -2 -0.5 ; 2 -0.5 ; -1 -1]

V = [1; 1; -0.5]

X1 = [0 0 0 ]'

X2 = [1 0 0 ]' 

X3 = [0 1 0 ]'

X4 = [1 1 0 ]'

X5 = [0 0 1 ]'

X6 = [1 0 1 ]'

X7 = [0 1 1 ]'

X8 = [1 1 1 ]'

X = [X1 X2 X3 X4 X5 X6 X7 X8] ;


//Calcul des valeurs de sorties


function [Z] = neurons(W,V,X)
    n = size(X,1);
    X(n+1,:) = ones(1,size(X,2));
    Y = W'*X;
    Z1 = (sign(Y)+1)/2;
    k = size(Z1,1);
    Z1(k+1,:) = ones(1,size(Z1,2));
    Y2 = V'*Z1;
    Z = (sign(Y2)+1/2);
    disp(Z)     //Correspondant à Z\texthyperscript{(2)}
endfunction


//Code Scilab à entrer dans la console 

//[Z] = neurons(W,V,X)

