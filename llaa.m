A=[4 2 3 ; 3 -5 2; -2 3 8]
B=[8; -14; 27]
n=3;
iteraciones=100;
x_ant=[0 0 0];
x= [0 0 0];
%%%
x_res=x;
 for j=1:10
     for i =1:n
         suma=0;
         for k = 1:n
             if(i~=k)
                 suma = A(i,k)*x_ant(k)+suma;
             end
         end
         x(i)=(B(i)-suma)/A(i,i)
         x_ant =x
     end
     x_res = [x_res; x]
 end
 