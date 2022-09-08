
function scaledPartialPi(a,b);
  N=length(a);
  x=zeros(N,1);
  A=[a b];
  for i=1:N
    s(i)=max(abs(a(i,:)))
  end
  P=a
  Q=b
  for j=1:N-1 
   if (abs(A(j,j)/s(j))>=abs(A(j+1,j)/s(j+1)))
      for i=j+1:N
       key=A(i,j)/A(j,j);
       A(i,:)=A(i,:)-key*A(j,:);
      endfor
   elseif (abs(A(j,j)/s(j))<abs(A(j+1,j)/s(j+1)))
      A([j j+1],:)=A([j+1 j],:);     
       for i=j+1:N
       key=A(i,j)/A(j,j);
       A(i,:)=A(i,:)-key*A(j,:);
      endfor 
   else
      A([j j+2],:)=A([j+2 j],:); 
      for i=j+1:N
       key=A(i,j)/A(j,j);
       A(i,:)=A(i,:)-key*A(j,:);
      endfor
   endif   
  endfor
  x(N)=A(N,N+1)/A(N,N);
  for k=N-1:-1:1
    x(k)=(A(k,N+1)-A(k,k+1:N)*x(k+1:N))/A(k,k);
  endfor
  fprintf('solution is x = %d \n',x)
endfunction