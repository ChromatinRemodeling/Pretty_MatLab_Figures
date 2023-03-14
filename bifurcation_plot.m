clear
blue = [0 0.4470 0.7410];
orange = [0.8500 0.3250 0.0980];
% yellow = [0.9290 0.6940 0.1250];
purple = [0.4940 0.1840 0.5560];


r = -4:0.01:0;
a1 = -sqrt(-4.*r);
a2 = sqrt(-4.*r);

figure
hold on

mono = fill([r,flip(r)],[a1,flip(a2)],blue,'EdgeColor','none','FaceAlpha',0.2);
bis = fill([r,flip(r),4,4],[a1,flip(a2),4,-4],orange,'EdgeColor','none','FaceAlpha',0.2);
plot([r,flip(r)],[a1,flip(a2)],'Color',blue,'LineWidth',1.5);
plot([0 0],[-4 4],'Color',orange,'LineWidth',1.5);
scatter(0,0,30,purple,'filled')

legend({'monostable','bistable','saddle point','transcritical','supercritical'},Location="southeast")

daspect([1 1 1])
xlim([-4 4])
ylim([-4 4])
set(gca,'XAxisLocation','origin')
set(gca,'YAxisLocation','origin')


xlabel('r')
ylabel('a')
title('r-a bifurcation plot')

grid on
