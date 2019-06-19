faul = imread('foto\faul.jpg');
rio = imread('foto\rio.jpeg');

faulgray = rgb2gray(faul);
riogray = rgb2gray(rio);

histeqfaul = histeq(faulgray);
histeqrio = histeq(riogray);

figure(1);
subplot(2,3,1),imshow(faul),title('Citra Asli Faul');
subplot(2,3,2),imshow(faulgray),title('Citra Gray Faul');
subplot(2,3,3),imshow(histeqfaul),title('Citra Histogram Faul');

subplot(2,3,5),imhist(faulgray),title('Histogram Gray Faul');
subplot(2,3,6),imhist(histeqfaul),title('Perataan Histogram Faul');


figure(2);
subplot(2,3,1),imshow(rio),title('Citra Asli Rio');
subplot(2,3,2),imshow(riogray),title('Citra Gray Rio');
subplot(2,3,3),imshow(histeqrio),title('Citra Histogram Rio');

subplot(2,3,5),imhist(riogray),title('Histogram Gray Rio');
subplot(2,3,6),imhist(histeqrio),title('Perataan Histogram Rio');
