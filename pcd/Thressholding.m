faul = imread('foto\faul.jpg');
rio = imread('foto\rio.jpeg');

faulgray = rgb2gray(faul);
riogray = rgb2gray(rio);

TresFaul = im2bw(faulgray,.50);
TresRio = im2bw(riogray,.25);

subplot(2,3,1),imshow(faul),title('Citra Asli Faul');
subplot(2,3,2),imshow(faulgray),title('Citra Gray Faul');
subplot(2,3,3),imshow(TresFaul),title('Citra Thressholdling 50');

subplot(2,3,4),imshow(rio),title('Citra Asli Rio');
subplot(2,3,5),imshow(riogray),title('Citra Gray Rio');
subplot(2,3,6),imshow(TresRio),title('Citra Thressholdling 25');