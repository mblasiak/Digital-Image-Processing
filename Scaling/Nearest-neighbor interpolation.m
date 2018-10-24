

%%
clear;
image=imread('lena.bmp');
imshow(image);
figure(1);
%Get Color Map from Image
[X,ColoMap]=gray2ind(image,256);

%Get orginal Image Size
[OrginaSizeX,OrginalSizeY]=size(image);
NewSizeX=200;
NewSizeY=700;

%Calculate X/Y size of new img
XRatio=OrginaSizeX/NewSizeX;
YRatio=OrginalSizeY/NewSizeY;

%Vreate new matrix of given size to keep grayscale info
NewImg=zeros(NewSizeX,NewSizeY);

%Find geometricaly closest matching pixel and save its value to new map

for x=(1:NewSizeX)
    for y=(1:NewSizeY)
       NewImg(x,y)=image(round(x*XRatio),round(y*YRatio));
        
        
    end
    
end 
figure(2);
%Show scaled img
imshow(NewImg,ColoMap);