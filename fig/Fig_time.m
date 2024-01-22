clear all; clc

load('..\result\MNIST-USPS_5fold.mat') 

figure(11)
time = [0.045, 0.371, 0.0146, 0.0234; 0.037, 0.4052, 0.0144, 0.0252];
bar({'MNIST-USPS', 'QMUL'}, time)
% tiledlayout(1, 2)

set(gcf,'color','white'); %窗口背景白色
backColor = [0.9843, 1.0000,0.9490];
set(gca, 'color', backColor); %窗口背景白色
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 13 7]);
ylabel('time (s)')
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
lgd = legend({'B2DMvDA','MvDA','2DLDA','(2D)^2LDA'},'Location','north');
lgd.NumColumns = 4;

export_fig time_comparsion_1.eps 


