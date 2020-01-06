W = [2 2; 2 2; -3 -1];
X1 = [0 0 ];
X2 = [0 1 ];
X3 = [1 0 ]
X4 = [1 1 ];

X = [X1 X2 X3 X4];

Y = W'*X;

//Z = (sign(Y)+1)/2;


function [] = hyperplans(W,X)
    Xd = -1:0.01:1.5;
    for i = 1:2
        Y = (-W(1,i)*Xd - W(3,i))/W(2,i);
        figure(i);
//        for j = 1:4
//            plot(X(1,j),X(2,j));
//        end
        plot(Xd,Y);
    end                  
endfunction



