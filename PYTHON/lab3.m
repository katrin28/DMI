%% Gabalveida sign?la mont???
%% Sinuso?da
% t_sin = 0:0.01:1;
% y_sin = A0+A*sin(2*pi*f*(t-delay))
% A0 = 0; A =0.5; T = (2.5-1)/6; f = 1/T; delay = 0;
% y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
% plot(t_sin,y_sin)
%% Line?ri main?gs sign?ls
% t_saw = 1:0.01:1.5;
% y_saw = k*t(t_saw-delay)
% yA = 0; yB = 0.5; tA = -1; tB = 0; delay = 0.125;
% k = (yA-yB)/(tA-tB)  %l?knes sl?puma koeficents
% delay - lai noteiktu delayr ir j?skat?s krustpunkts ar t asi (y=0)
% y_saw = k*(t_saw-delay);
% plot(t_saw,y_saw)
%% Konstantes sign?ls
% t_const = 1.5:0.01:2;
% y_const = zeroes(1,1)  0.5;
% y_const = ones(1,1)*0.5;
% nav korekti, ja t_const izmain?s, tad y_const nemain?sies
% y_const = zeros(size(t_const)); y_const = zeros(size(t_const));
% plot(t_const,y_const)
%% Nulles signals
% t_zero = 3.5:0.01:5.5;
% y_zero = zeros(size(t_zero)) 0.5;
%% trok??a sign?ls
% t_noise = 2:0.01:3.5;
% y_noise = rand(size(t_noise)) * 0.5 - 0.25;
% plot(t_noise,y_noise)
%% Sign?lu apvieno?ana
% t = [t_sin,t_saw,t_const,t_noise,t_zero];
% y = [y_sin,y_saw,y_const,y_noise,y_zero];
% plot(t,y)
% ylim([-1 1])
% grid on
function y = lab3_demo_fun(t)
t = 0:0.01:5.5;
%t_zero = 3:0.01:5;
t_zerof=(t>=3.5)&(t<=5.5);t_zero = t(t_zerof);
%t_sin =0:0.01:1;
t_sinf=(t>=0)&(t<1);t_sin=t(t_sinf);
%t_noise = 2:0.01:3.5;
t_noisef=(t>=2)&(t<=3.5);t_noise=t(t_noisef);
%t_const = 1:0.01:3;
t_constf=(t>=1.5)&(t<=2);t_const=t(t_constf);
%t_saw = 1:0.01:1.5;
t_sawf = (t>=1)&(t<=1.5);t_saw=t(t_sawf);
%% sinusoīda
%y_sin=A0+A*sin(2*pi*f*(t-delay))
A0=0; A=0.5; T = (2.5-1)/6; f = 1/T;
delay = 0;
y_sin=A0+A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin)
%% Lineāri mainīgs signāls
% k = (yA-yB)/(tA-tB)
% slīpuma koeficients
k = (0 +0.5)/(-1-0);
delay = 1.25;
y_saw = k*(t_saw-delay);
%plot(t_saw,y_saw)
%% konstantes signāls
y_const = zeros(size(t_const));
%plot(t_const,y_const)
%% nulles signāls
y_zero = zeros(size(t_zero))+0.5;
%plot(t_zero,y_zero)
%% trokšņa signāls
y_noise = 0.5*rand(size(t_noise))-0.25;
%plot(t_noise,y_noise)
%% signālu apvienošana
t = [t_sin,t_saw,t_const,t_noise,t_zero];
y = [y_sin,y_saw,y_const,y_noise,y_zero];
plot(t,y)
ylim([-1 1]);
xlim([0 6]);
grid on

%% Saja laboratorijas darba es uzinaaju kaa var mainiit signaalus.
% Katram signaalam es izmainiju koordinaatus un y un x assim izveidoju
% limitus.
% Peec tam ar plot komandu uzzimeeju grafiku.