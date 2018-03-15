%% Gabalveida signala montaza
%% Sinusoida
t_sin = 1:0.01:2.5;
%y_sin = A0+A*sin(2*pi*f*(t-delay))
A0=0; A = 2.5; T = (2.5-1)/3.5; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));

%% Lineari mainigs signals
t_saw = 6.5:0.01:8;
% y_saw = k*(t_saw-delay)
% k = (yA-yB)/(tA-tB) - lliknes slipuma koeficents, delay - lai noteiktu
% delay ir jaskatas krustpunkts ar t asi (y=0)
k = (2.5-(-2.5))/(6.5-8);
delay = 7.25;
y_saw = k*(t_saw-delay);

%% Konstantes signals
t_const = 4.5:0.01:6.5;
y_const = 2.5; %nepareizi, jo elemtntu skaitam (t un y) ir jābūt vienādam
%y_const = [2.5 2.5 2.5 2.5 jauzraksta 201 reizi]
y_const = zeros(1,201)+2.5; %viena rinda 201 kolonna
y_const = ones(1,201)*2.5;
% si pieeja ari nav korrekta jo ja izmainisies elementu skaits vektoram
% t_const, tad y_const neizmainisies
y_const = zeros(size(t_const))+2.5;

%% nullu signals
t_zero = 0:0.01:1;
y_zero = zeros(size(t_zero));

%% troksna signals
t_noise = 2.5:0.01:4.5;
y_noise = rand(size(t_noise))*3-1.5;

%% signalu apvienosana
t = [t_zero, t_sin, t_noise, t_const, t_saw];
y = [y_zero, y_sin, y_noise, y_const, y_saw];
plot(t,y)
