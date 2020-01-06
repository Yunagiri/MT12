 

X = [0 0 1 1 ; 0 1 0 1];
Za = [0 0 0 1; 0 1 1 1];


function [W] = ET_logique(X, Za)
    n = size(X,1)
    X(n+1,:) = ones(1,size(X,2))


    //X = 2*X -1
    //Za = 2*Za -1

    W = X*Za'
    W = W - ones(size(W,1));

//    for i=1:size(W,1)
//        for j=1:size(W,2)
//            if W(i,j) > 1
//                W(i,j) = W(i,j) -1
//            end
//        end
//    end


endfunction
    
    
    
function [] = hyperplans(W,X)
    Xd = -1:0.01:1.5;
    for i = 1:2
        Y = (-W(1,i)*X - W(3,i))/W(2,i);
        plot(X,Y);
    end                  
endfunction

function [W,V] = XOR(X,Z1)
    n = size(X,1)
    X(n+1,:) = ones(1,size(X,2))

    W = X*Z1'
    W = W - ones(size(W,1));

    
    Z2 = Z1
    d = size(Z1,1)
    Z1(d+1,:) = ones(1, size(Z1,2));
    V = Z1*Z2'
    V = V - ones(size(V,1));

endfunction
    

function [W] = Perceptron(P,Za,epsilon)
    dW = [0];
    W = floor(2*rand(3,2) - 1)
    sortie = 0;
    while (sortie == 0) do
        for i=1:size(P,1)
            Y(i,:) = W'*P(i,:)
            Z(i,:) = sign(Y(i,:))
            dW(1,i) = epsilon*P(i,:)*(Za(i,:)-Z(i,:))'
            W = W + dW;
            if dW == 0
                sortie = 1;
            end
        end
    end
endfunction
    















