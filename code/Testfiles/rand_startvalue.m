function A = rand_startvalue(A)
% Random selection of the goal (Box on/off, which exit)
%   Detailed explanation goes here
parameters;
rand_A=rand(nof_agents,1)

for n=1:nof_agents
   if(rand_A(n,1)>percentage) %Zufallsverteilt, kann evt noch verbessert werden (gauss oder so)
   %in percentage der Fälle wird das Aktuelle Ziel (die Box) mit dem finalen Zeil überschrieben!!
    A(n,5)=A(n,8);      
    A(n,6)=A(n,9);
   end
end
end

