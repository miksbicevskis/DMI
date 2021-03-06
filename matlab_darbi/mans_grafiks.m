function createfigure(X1, ymatrix1, YMatrix2)
%CREATEFIGURE(X1, YMATRIX1, YMATRIX2)
%  X1:  stairs x
%  YMATRIX1:  stairs matrix data
%  YMATRIX2:  matrix of y data

%  Auto-generated by MATLAB on 08-Feb-2018 09:19:29

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to stairs
stairs1 = stairs(X1,ymatrix1);
set(stairs1(1),'DisplayName','sinusoiida','Color',[0 0 0]);
set(stairs1(2),'DisplayName','kosinosiida','Color',[0 0 1]);

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix2);
set(plot1(1),'LineWidth',3,'Color',[0 1 0]);
set(plot1(2),'LineWidth',8,'Color',[0 1 1]);

% Create xlabel
xlabel('t,s');

% Create title
title('Mans pirmais grafiks');

% Create ylabel
ylabel('U,V');

box(axes1,'on');
grid(axes1,'on');
% Create legend
legend(axes1,'show');

