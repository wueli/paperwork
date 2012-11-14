clear all
P=imread('map.bmp','bmp');
P=1-P(:,:,1)
[X,Y]=find(P);
s=size(P);
for i=1:length(X)
        data_points(i,:)=[X(i),Y(i)];
end
domain_bounds=s;
use_plot=1;
T=fast_marching(data_points,domain_bounds,use_plot);
Te=exp(-T);
Te=flipud(Te);
[FX,FY]=gradient(Te);
quiver(-FX,-FY)
