A = [1 0 0 ; 0 1 0 ; 0 0 1 ]

B = [1 4 -2 ; -1 6 -2 ; -1 5 -1]

I = [1 0 0 ; 0 1 0 ;  0 0 1]

C = A.*B;

inter = B(1,:);
B(1,:) = B(2,:);
B(2,:) = inter;


inter = I(1,:);
I(1,:) = I(2,:);
I(2,:) = inter;

V = I.*B;

poly(B,'x');

[Bb,X]=bdiag(B) // On peut vérifier le résultat en vérifiant que la somme des valeurs propres est égale au déterminant.

function [M]=mat_aleat1(n,a)
    //On a multiplié par 2 fois a ce qui a pour effet de décaler l'intervalle vers la droite de 2a, puis on a soustrait tout l'intervalle de a ce qui le décale vers la gauche de a.
    M = 2*a*rand(n,n) - a;
endfunction


function [M]=mat_aleat2(n,a)
     M = floor(2*a*rand(n,n) - a);
endfunction

function [M] = tri_sup(n,a)
    M = floor(2*a*rand(n,n) - a);
    for i=1:n
        for j=1:i-1
            M(i,j) = 0;
            end
    end
endfunction

function [M] = tri_inf(n,a)
    M = floor(2*a*rand(n,n) - a);
    for j=1:n
        for i=1:j-1
            M(i,j) = 0;
            end
    end
endfunction

function [C] = comatrice(A)
    C = zeros(size(A,1));
    n = size(A,1);
    for i = 1:n
        for j = 1:n
            B = A;
            if (modulo(i + j, 2) == 0)
                sgn = 1;
            else
                sgn = -1;
            end
            B(i,:) = [];
            B(:,j) = [];
            C(i,j) = sgn*det(B);
        end
    end
endfunction

function [D,P] = diag_passage(A)
    // Tout d'abord, on va chercher la matrice de passage avec les vecteurs propres qu'on va obtenir en résolvant AX = LX.
    D = zeros(3);
    V = spec(A);
    D(1,1) = V(1,1);
    D(2,2) = V(2,1);
    D(3,3) = V(3,1); 

    [P,E] = spec(A);
endfunction
    
