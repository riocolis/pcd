faul = imread('foto\faul.jpg');
rio = imread('foto\rio.jpeg');

faulgray = rgb2gray(faul);
riogray = rgb2gray(rio);

faulA=adapthisteq(faulgray);
RioA=adapthisteq(riogray);

figure(1)
subplot(2,3,1),imshow(rio),title('Citra Asli Rio');
subplot(2,3,2),imshow(riogray),title('Citra Gray Rio');
subplot(2,3,3),imshow(RioA),title('Citra Chale Rio');

subplot(2,3,5),imhist(riogray),title('Histogram Citra Gray Rio');
subplot(2,3,6),imhist(RioA),title('Histogram Citra Chale Rio');

figure(2)
subplot(2,3,1),imshow(faul),title('Citra Asli Faul');
subplot(2,3,2),imshow(faulgray),title('Citra Gray Faul');
subplot(2,3,3),imshow(faulA),title('Citra Chale Faul');

subplot(2,3,5),imhist(faulgray),title('Histogram Citra Gray Faul');
subplot(2,3,6),imhist(faulA),title('Histogram Citra Chale Faul');