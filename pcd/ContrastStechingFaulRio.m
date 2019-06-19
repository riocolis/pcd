faul = imread('foto\faul.jpg');
rio = imread('foto\rio.jpeg');

faulgra = rgb2gray(faul);
riogra = rgb2gray(rio);

contrasfaul=imadjust(faulgra,[30/255,100/255],[4/255,175/255]);
contrasrio=imadjust(riogra,[20/255,150/255],[8/255,229/255]);

subplot(2,4,1),imshow(faul), title('Citra asli Faul');
subplot(2,4,2),imshow(contrasfaul),title('Citra kontras Faul');

subplot(2,4,3),imshow(rio), title('Citra asli Rio');
subplot(2,4,4),imshow(contrasrio),title('Citra kontras Rio');

subplot(2,4,5),imhist(faulgra), title('histogram citra asli Faul');
subplot(2,4,6),imhist(contrasfaul),title('histogram citra contras Faul');

subplot(2,4,7),imhist(riogra), title('histogram citra asli Rio');
subplot(2,4,8),imhist(contrasrio),title('histogram citra contras Rio');