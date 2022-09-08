
function x = GaussPartialPi (A,b)
  %A - co-efficient matrix_type
  %b - values on the right-hand side of the equatin matrix_type
  
  % to get n the No. of rows
  n = size(A,1);
  %produce the augmented matrix_type
  A = [A,b];
  %eliminatin process starts
  for i = 1:n-1
    
    %comparison to select the pivot
    for j = i+1:n
      if abs(A(j,i)) > abs(A(i,i)) %finds the maximum elements
        U = A(i,:); %interchange rows
        A(i,:) = A(j,:);
        A(j,:) = U;
      end
    end
    
    %Gauss Elemination
    for j = i+1:n
      m = A(j,i)/A(i,i)';
      for k = i+1:n+1
        A(j,k) = A(j,k) - m*A(i,k);
      end
     end
    end
   
   %Cheking for nonzero of last entry
   if A(n,n) == 0
     disp('No unique solution');
     return
    end
    
    %backward substitution
    x(n) = A(n,n+1)/A(n,n);
    for i = n - 1:-1:1
      sumax = 0;
      for j = i+1:n
        sumax = sumax + A(i,j)*x(j);
      end
      x(i) = (A(i,n+1) - sumax)/A(i,i)
     end
endfunction
