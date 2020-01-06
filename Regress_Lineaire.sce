
function [X] = coeff_regression(M) //Donne les coefficients de la droite de la regression
    Y = M(:,2);
    A = [M(:,1) ones(size(M,1),1)];
    X = inv(A'*A)*A'*Y;

endfunction


//On va poser la largeur de fenetre Lfen
Lfen = 50;
D = []
function [Z] = regress_lineaire(M)
    for i = Lfen:(size(M,1) - Lfen +1)
        D = M(i-Lfen+1:i,:);
        [S] = coeff_regression(D);
        alpha = exp(S(2,1));
        bta = -S(1,1);
        Z(i,1) = alpha;
        Z(i,2) = bta;
end

plot(Z(:,1),Z(:,2));
endfunction
