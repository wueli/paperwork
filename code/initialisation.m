function A=initialisation(nof_agents)    
parameters;
    for i=1:nof_agents
        A(i,1)=90+rand*30;           %position x Zufallsverteilt von 90-120
        A(i,2)=150;                  %position y
        A(i,3)=0;                    %speed x
        A(i,4)=0;                    %speed y
        A(i,5)=150;                  %goal x
        A(i,6)=40;                   %goal y
        A(i,7)=(v0+randn*s);         %Gaussverteilte Geschwindigkeit v0
    end
end
