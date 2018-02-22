%1.labotorijas darbs
%ievieto attelus
A = imread ('12.png');
B = imread ('2.png');
load x_y.mat
%uzzimee grafikus
%figure(1), image(A)
figure(2), image(B);
set(gca,'Ydir','normal')
%[x,y]= ginput(24)

C = polyfit(x,y,7)
U = -1:0.01:250;
I = polyval(C,U)
plot(x,y,'-',U,I)
xlabel('Wavelenght(nm)')
ylabel('Ŗelative Radiant intesity(%)')