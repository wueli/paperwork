function [A,r,r_train,c]=initialisation(A,r,r_train,nn,c)    
parameters;

%initialises startposition new agents
%         A(i,1)     %start position x
%         A(i,2)     %startposition y
%         A(i,3)     %speed x
%         A(i,4)     %speed y
%         A(i,5)     %current goal (1-6) =>inital goal(whether final line or paperbox)
%         A(i,6)     %time inside paperbox area 
%         A(i,7)     %Gaussverteilte Geschwindigkeit v0
%         A(i,8)     %Final goal (1-6) (can't be changed)
%         A(i,9)     %start time
%         A(i,10)    %number of start position (1-6) 
%         A(i,11)    %papertaker 1 or 0

r=r+rand*2*pers_per_s*t; 
    for i=1+size(A,1):size(A,1)+r-rem(r,1)
        start=rand;
        goal=rand;
        paper=rand;
        A(i,:)=0;
        
        if start<=p_1
        %% start point 1
        A(i,1)=(128+271)/2+(rand-0.5)*(128-271);                                       
        A(i,2)=10;
        A(i,10)=1;
        A(i,3)=0;                 
        A(i,4)=(v0+randn*s_v0);
            %% different goals from 1
            if goal<p_12
                A(i,8)=2;
            elseif goal<p_12+p_13
                A(i,8)=3;
            elseif goal<p_12+p_13+p_14
                A(i,8)=4;
            else 
                A(i,8)=5;
            end
            
            %% papertaker or not
            if paper<p1_paper
                A(i,5)=6;
                A(i,11)=1;
            else
                A(i,5)=A(i,8);
                A(i,11)=0;
            end
            
            
        elseif start<=p_1+p_3
        %% startpoint 3
        A(i,1)=340;                                       
        A(i,2)=(306+443)/2+(rand-0.5)*(306-443);
        A(i,10)=3;
        A(i,3)=-(v0+randn*s_v0);               
        A(i,4)=0;
                %% different goals from 3
            if goal<p_31
                A(i,8)=1;
            elseif goal<p_31+p_32
                A(i,8)=2;
            elseif goal<p_31+p_32+p_34
                A(i,8)=4;
            else 
                A(i,8)=5;
            end
            
            %% papertaker or not
            if paper<p3_paper
                A(i,5)=6;
                A(i,11)=1;
            else
                A(i,5)=A(i,8);
                A(i,11)=0;
            end
            
            
        elseif start<=p_1+p_3+p_4
       %% startpoint 4
        A(i,1)=340;                                       
        A(i,2)=(88+222)/2+(rand-0.5)*(88-222);
        A(i,10)=4;
        A(i,3)=-(v0+randn*s_v0);                 
        A(i,4)=0;
            %% different goals from 4
            if goal<p_41
                A(i,8)=1;
            elseif goal<p_41+p_42
                A(i,8)=2;
            elseif goal<p_41+p_42+p_43
                A(i,8)=3;
            else 
                A(i,8)=5;
            end
            %% papertaker or not
            if paper<p4_paper
                A(i,5)=6;
                A(i,11)=1;
            else
                A(i,5)=A(i,8);
                A(i,11)=0;
            end
            
            
        else
        %% startpoint 5    
        A(i,1)=(130+272)/2+(rand-0.5)*(130-272);
        A(i,2)=522;
        A(i,10)=5;
        A(i,3)=0;                 
        A(i,4)=-(v0+randn*s_v0);
            %% different goals from 5
            if goal<p_51
                A(i,8)=1;
            elseif goal<p_51+p_52
                A(i,8)=2;
            elseif goal<p_51+p_52+p_53
                A(i,8)=3;
            else 
                A(i,8)=4;
            end
            %% papertaker or not
            if paper<p5_paper
                A(i,5)=6;
                A(i,11)=1;
            else
                A(i,5)=A(i,8);
                A(i,11)=0;
            end
        end   

        
        %% Allgemein
        A(i,6)=0;
        A(i,7)=abs(A(i,3)+A(i,4));   %Gaussverteilte Geschwindigkeit v0
        A(i,9)=nn;               %start time 
        r=rem(r,1);
        
    end
    
    
%% agents from train


        if c<nof_train && nn*t>train_delay;  %wait until train arrives (train delay) and initialise maximal not_train agents
         r_train=r_train+rand*2*pers_per_s_train*t;   
            for i=1+size(A,1):size(A,1)+r_train-rem(r_train,1)
            paper=rand;
            goal=rand;
            A(i,:)=0;
            c=c+1;
            %% startpoint 2
            A(i,1)=10;                                       
            A(i,2)=(205+325)/2+(rand-0.5)*(205-325); 
            A(i,10)=2;
            A(i,3)=v0+randn*s_v0;                
            A(i,4)=0;
            
            %% different goals from 2
            if goal<p_21
                A(i,8)=1;
            elseif goal<p_21+p_23
                A(i,8)=3;
            elseif goal<p_21+p_23+p_24
                A(i,8)=4;
            else 
                A(i,8)=5;
            end
            
            %% papertaker or not
            if paper<p2_paper
                A(i,5)=6;
                A(i,11)=1;
            else
                A(i,5)=A(i,8);
                A(i,11)=0;
            end
    
            %% general
            A(i,6)=0;
            A(i,7)=abs(A(i,3)+A(i,4));   %Gauss distributed velocity v0
            A(i,9)=nn;                   %starting time 

            r_train=rem(r_train,1);
            end
        end
end
            


