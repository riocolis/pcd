faul = imread('foto\faul.jpg');
rio = imread('foto\rio.jpeg');

fauldobel=im2double(faul);
riodobel=im2double(rio);

faullog=3*log(1+fauldobel);
riolog=0.75*log(1+riodobel);

subplot(2,2,1),imshow(rio),title('Citra asli Rio');
subplot(2,2,2),imshow(riolog),title('Citra asli 0,75*log Rio');

subplot(2,2,3),imshow(faul),title('Citra asli Faul');
subplot(2,2,4),imshow(faullog),title('Citra asli 3*log faul');