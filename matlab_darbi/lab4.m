%% rezistoru vertiibas
R1=1; R2=2; R3=3; R4=4; R5=5; R6=6; R7=8; R8=8;
t= 0:0.01:6 
E1 = sin(2*t);
E2 = 9*ones(size(t));
E3 = lab_3_fun(t);
%% sastada matricu
R = [R1+R2+R3  -R2  0;
    -R2   R2+R4+R6 -R5;
    0   -R5  R5+R7+R8];
E=[E1;-E2;-E3];
%% atrast straavu IR8 - ? un jaudu PR8 -?
Ik = R\E;
IR8 = Ik(3,:);
UR8 = IR8*R8;
plot(t,UR8);
PR8 = UR8.*IR8;
hold on
plot(t,PR8);