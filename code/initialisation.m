function A=initialisation()    
parameters;
    for i=1:nof_agents
        A(i,1)=350;                   %Startposition x
        A(i,2)=142+rand*10;           %startposition y
        A(i,3)=0;                    %speed x
        A(i,4)=-(v0+randn*s);        %speed y
        A(i,5)=6;                 % current goal (1-6) =>inital goal(wether final line or paperbox)
        A(i,6)=0;                 % "nothing"
        A(i,7)=-A(i,4);       %Gaussverteilte Geschwindigkeit v0
        A(i,8)=3;                    %Final goal (1-6) (can't be changed)
        A(i,9)=A(i,8);
        
    end
   

end
% exit_west=1
% exit_south=2
% exit_northr=3
% exit_norhtl=4
% exit_east=5
% box=6