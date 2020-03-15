close all;
clear all;
A1=imread('a (4).png');
figurehuman subject in a researchhuman subject in a researchhuman subject in a research
A=imresize(A1,[1152 1500]);
green = A(:,:,2);
imshow(A);
title('Original Image');
figure;
imshow(green);
title('Green channel Image');
gauss = imgaussfilt(green, 1);
figure
imshow(gauss);
title('Gaussian Filtered Image');

median=medfilt2(gauss,[35 35]);
figure
imshow(median);
title('Median filtered Image');
Isc=imsubtract(gauss,median);
figure
imshow(Isc);
title('Isc');
% All bright pixels in Isc are replaced by the value of pixel in median filter image
[u,v]=size(Isc);
for R=1:u 
    for C=1:v
        pixel=Isc(R,C);
        if pixel>0.000000000,Isc(R,C)=median(R,C);end
    end
end
figure
imshow(Isc);
title('Isc-bright replaced image');
% All bright pixels in gaussian filter image indicated by 'Isc' are replaced by the values of thier corresponding pixels in median filter image.
[u2,v2]=size(Isc);
for R=1:u2
    for C=1:v2
        pixel=Isc(R,C);
        if pixel>0.000000000,gauss(R,C)=Isc(R,C);end
    end
end
figure
imshow(gauss);
gauss1=gauss;
title('Final image');
cc=imresize(gauss,[573 727]);
figure
imshow(cc);
%ff=imresize(gauss,[576 750]);
kernel=[-1,-1,-1,;-1,8,-1;-1,-1,-1];
t=imfilter(cc,kernel);
figure
imshow(t);
bloodVessels = VesselExtract(t,3.6);
figure
imshow(bloodVessels);
L2=logical(bloodVessels);
BW2 = bwareafilt(L2,[0 500]);
figure
imshow(BW2)
[u3,v3]=size(gauss);
for R=5:1147
    for C=5:1495
       
       pi1(R,C)=gauss(R+(sign(cos(7*pi/4)))-(sign(sin(7*pi/4)))*3,C+(sign(sin(7*pi/4)))+(sign(cos(7*pi/4)))*3)+gauss(R+(sign(cos(7*pi/4)))+(sign(sin(7*pi/4)))*3,C+(sign(sin(7*pi/4)))-(sign(cos(7*pi/4)))*3)-2*(gauss(R+(sign(cos(7*pi/4))),C+(sign(sin(7*pi/4)))));
       pi2(R,C)=gauss(R+(sign(cos(6*pi/4)))-(sign(sin(6*pi/4)))*3,C+(sign(sin(6*pi/4)))+(sign(cos(6*pi/4)))*3)+gauss(R+(sign(cos(6*pi/4)))+(sign(sin(6*pi/4)))*3,C+(sign(sin(6*pi/4)))-(sign(cos(6*pi/4)))*3)-2*(gauss(R+(sign(cos(6*pi/4))),C+(sign(sin(6*pi/4)))));
       pi3(R,C)=gauss(R+(sign(cos(5*pi/4)))-(sign(sin(5*pi/4)))*3,C+(sign(sin(5*pi/4)))+(sign(cos(5*pi/4)))*3)+gauss(R+(sign(cos(5*pi/4)))+(sign(sin(5*pi/4)))*3,C+(sign(sin(5*pi/4)))-(sign(cos(5*pi/4)))*3)-2*(gauss(R+(sign(cos(5*pi/4))),C+(sign(sin(5*pi/4)))));
       pi4(R,C)=gauss(R+(sign(cos(4*pi/4)))-(sign(sin(4*pi/4)))*3,C+(sign(sin(4*pi/4)))+(sign(cos(4*pi/4)))*3)+gauss(R+(sign(cos(4*pi/4)))+(sign(sin(4*pi/4)))*3,C+(sign(sin(4*pi/4)))-(sign(cos(4*pi/4)))*3)-2*(gauss(R+(sign(cos(4*pi/4))),C+(sign(sin(4*pi/4)))));
       pi5(R,C)=gauss(R+(sign(cos(3*pi/4)))-(sign(sin(3*pi/4)))*3,C+(sign(sin(3*pi/4)))+(sign(cos(3*pi/4)))*3)+gauss(R+(sign(cos(3*pi/4)))+(sign(sin(3*pi/4)))*3,C+(sign(sin(3*pi/4)))-(sign(cos(3*pi/4)))*3)-2*(gauss(R+(sign(cos(3*pi/4))),C+(sign(sin(3*pi/4)))));
       pi6(R,C)=gauss(R+(sign(cos(2*pi/4)))-(sign(sin(2*pi/4)))*3,C+(sign(sin(2*pi/4)))+(sign(cos(2*pi/4)))*3)+gauss(R+(sign(cos(2*pi/4)))+(sign(sin(2*pi/4)))*3,C+(sign(sin(2*pi/4)))-(sign(cos(2*pi/4)))*3)-2*(gauss(R+(sign(cos(2*pi/4))),C+(sign(sin(2*pi/4)))));
       pi7(R,C)=gauss(R+(sign(cos(1*pi/4)))-(sign(sin(1*pi/4)))*3,C+(sign(sin(1*pi/4)))+(sign(cos(1*pi/4)))*3)+gauss(R+(sign(cos(1*pi/4)))+(sign(sin(1*pi/4)))*3,C+(sign(sin(1*pi/4)))-(sign(cos(1*pi/4)))*3)-2*(gauss(R+(sign(cos(1*pi/4))),C+(sign(sin(1*pi/4)))));
       pi8(R,C)=gauss(R+(sign(cos(8*pi/4)))-(sign(sin(8*pi/4)))*3,C+(sign(sin(8*pi/4)))+(sign(cos(8*pi/4)))*3)+gauss(R+(sign(cos(8*pi/4)))+(sign(sin(8*pi/4)))*3,C+(sign(sin(8*pi/4)))-(sign(cos(8*pi/4)))*3)-2*(gauss(R+(sign(cos(8*pi/4))),C+(sign(sin(8*pi/4)))));
        
        end
end
figure 
imshow(pi1);figure
imshow(pi2);figure
imshow(pi3);figure
imshow(pi4);figure
imshow(pi5);figure
imshow(pi6);figure
imshow(pi7);figure
imshow(pi8);figure
del1=mean2(pi1)+std2(pi1);
del2=mean2(pi2)+std2(pi2);
del3=mean2(pi3)+std2(pi3);
del4=mean2(pi4)+std2(pi4);
del5=mean2(pi5)+std2(pi5);
del6=mean2(pi6)+std2(pi6);
del7=mean2(pi7)+std2(pi7);
del8=mean2(pi8)+std2(pi8);
w=[pi1 pi2 pi3 pi4 pi5 pi6 pi7 pi8];
s=mean2(w)+std2(w);

for R=5:1146
    for C=5:1495
        if  pi1(R+(sign(cos(7*pi/4))),C+(sign(sin(7*pi/4))))>s,C1(R,C)=gauss(R,C);
         if   pi2(R+(sign(cos(6*pi/4))),C+(sign(sin(6*pi/4))))>s,C2(R,C)=gauss(R,C);
           if pi3(R+(sign(cos(5*pi/4))),C+(sign(sin(5*pi/4))))>s,C3(R,C)=gauss(R,C);
           if pi4(R+(sign(cos(4*pi/4))),C+(sign(sin(4*pi/4))))>s,C4(R,C)=gauss(R,C);
            if pi5(R+(sign(cos(3*pi/4))),C+(sign(sin(3*pi/4))))>s,C5(R,C)=gauss(R,C);
           if pi6(R+(sign(cos(2*pi/4))),C+(sign(sin(2*pi/4))))>s,C6(R,C)=gauss(R,C);
            if pi7(R+(sign(cos(1*pi/4))),C+(sign(sin(1*pi/4))))>s,C7(R,C)=gauss(R,C);
            if pi8(R+(sign(cos(8*pi/4))),C+(sign(sin(8*pi/4))))>s,C8(R,C)=gauss(R,C);
        end
            end
           end
           end
           end
         end
        end
    end
end
end
imshow(C1);figure
imshow(C2);figure 
imshow(C3);figure 
imshow(C4);figure
imshow(C5);figure
imshow(C6);figure
imshow(C7);figure
imshow(C8);figure
[f1,h1]=size(C1);
[f2,h2]=size(C2);
[f3,h3]=size(C3);
[f4,h4]=size(C4);
[f5,h5]=size(C5);
[f6,h6]=size(C6);
[f7,h7]=size(C7);
[f8,h8]=size(C8);
A4=[f1 f2 f3 f4 f5 f6 f7 f8];
A5=[h1 h2 h3 h4 h5 h6 h7 h8];
u4=min(A4);
v4=min(A5);
for R=5:u4
    for C=5:v4
       if C1(R,C)<100,result1(R,C)=C1(R,C);
           if C2(R,C)<100,result2(R,C)=C2(R,C);
               if C3(R,C)<100,result3(R,C)=C3(R,C);
                   if C4(R,C)<100,result4(R,C)=C4(R,C);
                       if C5(R,C)<100,result5(R,C)=C5(R,C);
                           if C6(R,C)<100,result6(R,C)=C6(R,C);
                               if C7(R,C)<100,result7(R,C)=C7(R,C);
                                   if C8(R,C)<100,result8(R,C)=C8(R,C);
   
                                   end
                               end
                           end
                       end
                   end
               end
           end
       end
    end
end
for R=5:u4
    for C=5:v4
        result(R,C)=result1(R,C)+result2(R,C)+result3(R,C)+result4(R,C)+result5(R,C)+result6(R,C)+result7(R,C)+result8(R,C);
    end
end
imshow(result);
title('Multilayered dark object filtered Image');
figure

for R=5:u4
    for C=5:v4
        pixel=result(R,C);
        if pixel>0.000000000,gauss(R,C)=result(R,C);end
    end
end
imshow(gauss)
 title('Confidence map')      
 gauss2=imresize(A,[1100,1400]);
  %[centers,radii]=imfindcircles(gauss,[5,50],'ObjectPolarity','dark');
  %viscircles(centers,radii,'EdgeColor','b');

K=fspecial('disk',4);
L=imfilter(result,K,'replicate');
L = im2bw(L,0.4);
M =  bwmorph(L,'tophat');
% M = im2bw(M);
wname = 'sym4';
[CA,CH,CV,CD] = dwt2(M,wname,'mode','per');

figure,imshow(CA);
vb=CA;
for R=1:573
    for C=1:727
        pixel=BW2(R,C);
        if pixel==0.0000000000000,vb(R,C)=0;
            end
    end
end
figure, imshow(vb);
L4=logical(vb);
BW3 = bwareafilt(L4,[0 14]);
BW6=double(BW3);
kernel2=[1 1 1;1 0 1;1 1 1];
idx=conv2(BW6,kernel2,'same')>=.998;
figure, imshow(idx);
ccv=bwconncomp(idx);
lab=labelmatrix(ccv);
b = bwboundaries(idx);
I = imresize(cc,[576 750]);
figure, imshow(I);
I2=I;
for R=1:573
    for C=1:727
        pixel=idx(R,C);
        if pixel>0.0000000000000,I(R,C)=I(R,C);
        else
            I(R,C)=0;
        end
    end
end
figure, imshow(I);
for area_bloodvessels = 1:numel(b)
for R=1:573
    for C=1:727
        pixel=lab(R,C);
        if pixel==area_bloodvessels,
                    vps{area_bloodvessels}(R,C)=I(R,C);
        end
    end
end
end

figure, imshow(I2);
hold on
for area_bloodvessels = 1:numel(b)
    plot(b{area_bloodvessels}(:,2), b{area_bloodvessels}(:,1), 'b', 'Linewidth', 1)
end 
for v = 1:numel(vps)
    lbp{v}= extractLBPFeatures(vps{v});
end

