function graycl=getimage()
%get the image for plotting
[X,map]=imread('Bilder/PlanBhf_box.bmp','bmp');   
gray=ind2gray(X,map); 
[a,b]=size(X);
for m=1:a
    for n=1:b
        if(gray(m,n)~=0)
        graycl(m,n)=255;
        end
    end
end

