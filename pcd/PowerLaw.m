faul1 = imread('foto\faul.jpg');
rio1 = imread('foto\rio.jpeg');

faul=rgb2gray(faul1);
rio=rgb2gray(rio1);

img1=double(faul);
img2=double(rio);

[m1,n1]=size(img1);
[m2,n2]=size(img2);

gamma=2.5;
out1= abs((1*img1).^gamma);
out2= abs((1*img2).^gamma);

maxm1= max(out1(:));
minm1= min(out1(:));

maxm2= max(out2(:));
minm2= min(out2(:));

for i=1:m1
    for j=1:n1
        out1(i,j)=(255*out1(i,j))/(maxm1-minm1);
    end
end

for i=1:m2
    for j=1:n2
        out2(i,j)=(255*out2(i,j))/(maxm2-minm2);
    end
end

out3=uint8(out1);
out4=uint8(out2);


figure(1)
subplot(1,2,1),imshow(faul),title('Citra Asli Faul');
subplot(1,2,2),imshow(out3),title('Citra Powerlaw Faul');

figure(2)
subplot(1,2,1),imshow(rio),title('Citra Asli Rio');
subplot(1,2,2),imshow(out4),title('Citra Powerlaw Rio');
