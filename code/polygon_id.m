function A = polygon_id( A,B,gray,i )
%is checking if the current location is in a direct (free of wall) way
% observes if the current way is block, if so, it evoke the function
% polygon_swap
parameters;
   obstacle_there=0; 
   
   x_dist=abs(A(i,1)-A(i,5));
   y_dist=abs(A(i,2)-A(i,6));
   x_l=x_dist+1;
   y_l=y_dist+1;
   if(x_dist>y_dist)     
x_vec=round(linspace(A(i,1),A(i,5),x_l));
y_vec=round(linspace(A(i,2),A(i,6),x_l));
   else    
x_vec=round(linspace(A(i,1),A(i,5),y_l));
y_vec=round(linspace(A(i,2),A(i,6),y_l));
   end
  %Bis hierhin wird der Vektor zwischen Position und Ziel approximiert, diese können nun in die Matrix A eingespiesen werden 
for n=1:length(x_vec)
if(gray(y_vec(n),x_vec(n))==0) %überprüft, ob ein Feld auf diesem direkten Vektor schon besetzt ist! d.h. =0 (also schwarz)
    obstacle_there=1;       %falls ja setzt boolean obstacle_there auf 1 (wahr)
end
    if(obstacle_there)      %wenn boolean 1 (wahr) dann wird ein neuer Zielpunkt gesucht, für die Funktion aus!
     A=polygon_swap(A,B,i);	
    end

end
end

