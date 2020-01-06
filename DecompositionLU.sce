function[L,U]=decompositionLU(A)
[m n]=size(A);
if (m ~= n )
disp ( 'LR2 error: Matrix must be square' );
return;
end;
L=zeros(m,m);
U=zeros(m,m);
for i=1:m
//Finding L
    for k=1:i-1
     L(i,k)=A(i,k);
         for j=1:k-1
         L(i,k)= L(i,k)-L(i,j)*U(j,k);
         end
     L(i,k) = L(i,k)/U(k,k);
     end
//Finding U
    for k=i:m
    U(i,k) = A(i,k);
        for j=1:i-1
        U(i,k)= U(i,k)-L(i,j)*U(j,k);
        end
    end
  end
  for i=1:m
  L(i,i)=1;
  end
//Program shows U and L
  U
  L
end
