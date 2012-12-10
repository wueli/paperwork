function [eval, eval2 ] = analysepart(C)
%evaluation of the results
%   Detailed explanation goes here

% C= [Time -Starttime,  startposition, Finalposition(goal), papertaker?] ]

%%Positions
    % west=1
    % south=2
    % northr=3
    % norhtl=4
    % east=5
    
   %%papertaker
   % A(i,11)=1 => yes
   % A(i,11)=2 => no
   
  iterw=[0 0 0 0 0];  
  iters=[0 0 0 0 0];  
  iternr=[0 0 0 0 0];  
  iternl=[0 0 0 0 0];  
  itere=[0 0 0 0 0];  
  iterw2=[0 0 0 0 0];
  iters2=[0 0 0 0 0];
  iternr2=[0 0 0 0 0];
  iternl2=[0 0 0 0 0];
  itere2=[0 0 0 0 0];
  
  
  [a,b]=size(C); 
  
%matrices without papertaker
west=zeros(a,5); %(a,2)=south (a,3)=norhtr (a,4)=northl (a,5)=east
south=zeros(a,5); %(a,1)=west (a,3)=norhtr (a,4)=northl (a,5)=east
northr=zeros(a,5); %(a,1)=west (a,2)=south   (a,5)=east
northl=zeros(a,5); %(a,1)=west (a,2)=south   (a,5)=east
east=zeros(a,5); %(a,1)=west (a,2)=south (a,3)=norhtr (a,4)=northl (a,5)=east
%-------------------------------------------
%matrices papertaker
west2=zeros(a,5); %(a,2)=south (a,3)=norhtr (a,4)=northl (a,5)=east
south2=zeros(a,5); %(a,1)=west (a,3)=norhtr (a,4)=northl (a,5)=east
northr2=zeros(a,5); %(a,1)=west (a,2)=south   (a,5)=east
northl2=zeros(a,5); %(a,1)=west (a,2)=south   (a,5)=east
east2=zeros(a,5); %(a,1)=west (a,3)=south (a,3)=norhtr (a,4)=northl (a,5)=east

C=sortrows(C,[4 2]); %structur the matrix rows (first: row 4, secondly row 1)

for i=1:a; %initialisation over all agents
  if C(i,4)==0  %not papertaker
        %west
        if C(i,2)==1 
        counter=[2,3,4,5];   
         for j=counter(1:4)
            if C(i,3)==j %exit south
                iterw(j)=iterw(j)+1;
                west(iterw(j),j)=C(i,1);  %saves time in matrix
             end
         end
        end
         %south
         if C(i,2)==2
         counter=[1,3,4,5];   
         for j=counter(1:4)
            if C(i,3)==j %exit south
                iters(j)=iters(j)+1;
                south(iters(j),j)=C(i,1);  %saves time in matrix
             end
         end
         end
         %northr
         if C(i,2)==3
         counter=[1,2,5];   
         for j=counter(1:3)
            if C(i,3)==j %exit south
                iternr(j)=iternr(j)+1;
                northr(iternr(j),j)=C(i,1);  %saves time in matrix
             end
         end  
         end
             %northl
         if C(i,2)==4
         counter=[1,2,5];   
         for j=counter(1:3)
            if C(i,3)==j %exit south
                iternl(j)=iternl(j)+1;
                northl(iternl(j),j)=C(i,1);  %saves time in matrix
             end
         end  
         end
         %east
        if C(i,2)==5 
        counter=[1,2,3,4];   
         for j=counter(1:4)
            if C(i,3)==j %exit south
                itere(j)=itere(j)+1;
                east(itere(j),j)=C(i,1);  %saves time in matrix
             end
         end
         end
   end
    
    
 %----------------------------------------
   if C(i,4)==1 %papertaker
         %west
        if C(i,2)==1 
        counter=[2,3,4,5];   
         for j=counter(1:4)
            if C(i,3)==j %exit south
                iterw2(j)=iterw2(j)+1;
                west2(iterw2(j),j)=C(i,1);  %saves time in matrix
             end
         end
        end
         %south
         if C(i,2)==2
         counter=[1,3,4,5];   
         for j=counter(1:4)
            if C(i,3)==j %exit south
                iters2(j)=iters2(j)+1;
                south2(iters2(j),j)=C(i,1);  %saves time in matrix
             end
         end
         end
         %northr
         if C(i,2)==3
         counter=[1,2,5];   
         for j=counter(1:3)
            if C(i,3)==j %exit south
                iternr2(j)=iternr2(j)+1;
                northr2(iternr2(j),j)=C(i,1);  %saves time in matrix
             end
         end  
         end
         %northl
         if C(i,2)==4
         counter=[1,2,5];   
         for j=counter(1:3)
            if C(i,3)==j %exit south
                iternl2(j)=iternl2(j)+1;
                northl2(iternl2(j),j)=C(i,1);  %saves time in matrix
             end
         end  
         end
         %east
        if C(i,2)==5 
        counter=[1,2,3,4];   
         for j=counter(1:4)
            if C(i,3)==j %exit south
                itere2(j)=itere2(j)+1;
                east2(itere2(j),j)=C(i,1);  %saves time in matrix
             end
         end
        end
       
    end  
end

%Medianvalues for the non-taker eval-matrix
%approach, just take the median from the not-null values 
wS=median(west(find(west(:,2)~=0),2));
wNR=median(west(find(west(:,3)~=0),3));
wNL=median(west(find(west(:,4)~=0),4));
wE=median(west(find(west(:,5)~=0),5));

sW=median(south(find(south(:,1)~=0),1));
sNR=median(south(find(south(:,3)~=0),3));
sNL=median(south(find(south(:,4)~=0),4));
sE=median(south(find(south(:,5)~=0),5));

nrW=median(northr(find(northr(:,1)~=0),1));
nrS=median(northr(find(northr(:,2)~=0),2));
nrE=median(northr(find(northr(:,5)~=0),5));

nlW=median(northl(find(northl(:,1)~=0),1));
nlS=median(northl(find(northl(:,2)~=0),2));
nlE=median(northl(find(northl(:,5)~=0),5));

eW=median(east(find(east(:,5)~=0),5));
eS=median(east(find(east(:,2)~=0),2));
eNR=median(east(find(east(:,3)~=0),3));
eNL=median(east(find(east(:,4)~=0),4));

%evaluation-matrix (rows=startpoint, column=exit)
eval=[0 wS wNR wNL wE; sW 0 sNR sNL sE; nrW nrS 0 0 nrE; nlW nlS 0 0 nlE; eW eS eNR eNL 0];
  
%---------------------------------------------------
%Medianvalues for the taker eval-matrix
wS2=median(west2(find(west2(:,2)~=0),2));
wNR2=median(west2(find(west2(:,3)~=0),3));
wNL2=median(west2(find(west2(:,4)~=0),4));
wE2=median(west2(find(west2(:,5)~=0),5));

sW2=median(south2(find(south2(:,1)~=0),1));
sNR2=median(south2(find(south2(:,3)~=0),3));
sNL2=median(south2(find(south2(:,4)~=0),4));
sE2=median(south2(find(south2(:,5)~=0),5));

nrW2=median(northr2(find(northr2(:,1)~=0),1));
nrS2=median(northr2(find(northr2(:,2)~=0),2));
nrE2=median(northr2(find(northr2(:,5)~=0),5));

nlW2=median(northl2(find(northl2(:,1)~=0),1));
nlS2=median(northl2(find(northl2(:,2)~=0),2));
nlE2=median(northl2(find(northl2(:,5)~=0),5));

eW2=median(east2(find(east2(:,5)~=0),5));
eS2=median(east2(find(east2(:,2)~=0),2));
eNR2=median(east2(find(east2(:,3)~=0),3));
eNL2=median(east2(find(east2(:,4)~=0),4));

%evaluation-matrix (rows=startpoint, column=exit)

eval2=[0 wS2 wNR2 wNL2 wE2; sW2 0 sNR2 sNL2 sE2; nrW2 nrS2 0 0 nrE2; nlW2 nlS2 0 0 nlE2; eW2 eS2 eNR2 eNL2 0];


end

