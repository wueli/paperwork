function [F] = getmap()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% exit=0;
% %while exit==0
% [FileName, PathName]=uigetfile('*.bmp','Select a Bitmap File')
% I=imread(strcat(PathName,FileName))
% % if(find(I>6))
% %     exit=0;
% %     uiwait(msgbox('Wrong file'));
% % end
% %end
[X,map]=imread('Bilder/PlanBhf_box.bmp');
I=im2double(X,'indexed');
% subplot(1,2,1)
% imshow(X)
% subplot(1,2,2)
% imshow(I)

[n,m]=size(I);
wall=find(I==1);
exit_west=find(I==7);
exit_south=find(I==8);
exit_northr=find(I==6);
exit_northl=find(I==5);
exit_east=find(I==3);
space=find(I==9);
box=find(I==2);
box_area=find(I==4);
F=zeros(n,m);
F(wall)=0;
F(space)=1;
F(exit_west)=2;
F(exit_south)=3;
F(exit_northr)=4;
F(exit_northl)=5;
F(exit_east)=6;
F(box)=7;
F(box_area)=8;
% F=placebox(F,180,300,0);  %platziert Box: eingabe(F, x0,y0, alpha)
 
F=flipud(F);
imshow(F);
end



