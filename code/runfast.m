function [FOX,FOY,WX,WY,ZB] = runfast()
%Read the painted picture into the programme and generates the 
%gradientfield for each exit and the forcefield for the walls
%Output: Gradientfield, directed to the exits (FOX,FOY)
%        Forcefield the simulate the wall rejection (WX,WY)
%        Value of the box_area (where the destination_change happens)

%Converts the picture into useable data
f=getmap();

%reads the value of the box_area
[ZB(:,1),ZB(:,2)]=find(flipud(f)==8);

%creates a matrix with only "wall=0" and "empty=1" entries
wall=find(f==0); 
W=ones(size(f));
W(wall)=0;

%produces the forcefield for the walls
[WX,WY,DistanceMap]=grad_walls(W);

    for i=2:7 %iterates over all 5 possible exits
    [FX,FY]=computeGradientField(f,i);
            if(i==2);  %creates for the first run-through a empty Matrix
                [a,b]=size(FX);
                FOX=ones(a,b,6);
                FOY=ones(a,b,6);
            end
    %Corrects the Y-axis inversion
    FX=flipud(FX);
    FY=-flipud(FY);

    %Loop Which readss the FX/FY values in a bigger R^3-Matrix
    [a,b]=size(FX);
            for j=1:a
                      for m=1:b
                        FOX(j,m,i-1)=FX(j,m);
                        FOY(j,m,i-1)=FY(j,m);
                      end
            end
    end
end
