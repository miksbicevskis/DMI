function y = lab_3_fun(t)
%t = -0.5:0.01:8
t_saw_f = (t>=0)&(t<0.5); t_saw = t(t_saw_f);
t_sin_f = (t>=0.5)&(t<1.5); t_sin = t(t_sin_f);
t_zero_f = (t>=1.5)&(t<2); t_zero = t(t_zero_f);
t_const_f = (t>=2)&(t<4); t_const = t(t_const_f);
t_noise_f = (t>=4)&(t<=6); t_noise = t(t_noise_f);
%% linearais signals
%t_saw = -0.5:0.01:0.5;
k = (-0.5-0.5)/(0-0.5);
delay = 0.25;
y_saw = k*(t_saw-delay);
%plot(t_saw,y_saw);
%% sinusoida
%t_sin = 0.5:0.01:1.5;
A0 = 0.5; A = 3; T = (1.5-0.5)/3; f = 1/T; delay = 1;
y_sin = A0-A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin);
%% nullu signals
%t_zero = 1.5:0.01:2;
y_zero = zeros(size(t_zero));
%plot(t_zero,y_zero);
%% konstantes signals
%t_const = 2:0.01:4;
y_const = zeros(size(t_const))-3;
%plot(t_const,y_const);
%% troksna signals
%t_noise = 4:0.01:6;
y_noise = rand(size(t_noise))*3-1.5;
%plot(t_noise,y_noise);
%% signalu apvienosana
y = [y_saw, y_sin, y_zero, y_const, y_noise];
%plot(t,y)
%Grafiks:
t = [t_saw, t_sin, t_zero, t_const, t_noise];
if nargout == 0
plot(t,y,'b','LineWidth',1), grid on
axis([0 6.5 -3.5 3.5]);
title('Gabalveida signals');
xlabel('Laiks t(s)');
ylabel('Momentana vertiba');
plot(t,y)
end