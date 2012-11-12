function A=initialisation()    
parameters;
    for i=1:nof_agents
        A(i,1)=50+rand*30;           %position x Zufallsverteilt von 90-120
        A(i,2)=200;                  %position y
        A(i,3)=0;                    %speed x
        A(i,4)=-(v0+randn*s);        %speed y
        A(i,5)=200;                  %goal x
        A(i,6)=90;                   %goal y
        A(i,7)=-A(i,4);       %Gaussverteilte Geschwindigkeit v0
        A(i,8)=0;                    %edge x
        A(i,9)=0;                    %edge y
    end
end
