blue = [0 0.4470 0.7410];
orange = [0.8500 0.3250 0.0980];

f = figure();
subplot(1,3,1)
hold on

a = -2;
r1 = -1:0.01:0;
r2 = 0:0.01:2;
x11 = (a-sqrt(a^2+4.*r1))./2;
x21 = (a+sqrt(a^2+4.*r1))./2;
x12 = (a-sqrt(a^2+4.*r2))./2;
x22 = (a+sqrt(a^2+4.*r2))./2;

solid_lines = plot([r1,r2],[x11,x12],'Color','#0072BD','LineWidth',1.5);
plot([-2,r2],[0,x22],'Color','#0072BD','LineWidth',1.5);
dashed_lines = plot([r1,2],[x21,0],'--','Color','#0072BD','LineWidth',1.5);

orange_fill = fill([flip(r1),r1,r2,2],[flip(x21),x11,x12,0],orange,'EdgeColor','none','FaceAlpha',0.2);
fill([r2,2,-2,-2],[x22,3,3,0],orange,'EdgeColor','none','FaceAlpha',0.2);

blue_fill = fill([flip(r1),r1,r2,2,-2,-2],[flip(x21),x11,x12,-3,-3,0],blue,'EdgeColor','none','FaceAlpha',0.2);
fill([r2,2],[x22,0],blue,'EdgeColor','none','FaceAlpha',0.2);

legend([orange_fill,blue_fill,solid_lines,dashed_lines],{'dx/dt<0','dx/dt>0','stable fixed point','unstable fixed point'},Location="northwest")

daspect([2 3 1])
xlim([-2 2])
ylim([-3 3])
set(gca,'XAxisLocation','origin')
xlabel('r')
ylabel('x*')
title('a=-2')

grid on
hold off

subplot(1,3,2)
hold on

a = 0;

r2 = 0:0.01:2;
x12 = (a-sqrt(a^2+4.*r2))./2;
x22 = (a+sqrt(a^2+4.*r2))./2;

solid_lines = plot([-2,r2],[0,x12],'Color','#0072BD','LineWidth',1.5);
plot(r2,x22,'Color','#0072BD','LineWidth',1.5);
dashed_lines = plot([0,2],[0,0],'--','Color','#0072BD','LineWidth',1.5);

orange_fill = fill([r2,2],[x12,0],orange,'EdgeColor','none','FaceAlpha',0.2);
fill([r2,2,-2,-2],[x22,3,3,0],orange,'EdgeColor','none','FaceAlpha',0.2);

blue_fill = fill([r2,2,-2,-2],[x12,-3,-3,0],blue,'EdgeColor','none','FaceAlpha',0.2);
fill([r2,2],[x22,0],blue,'EdgeColor','none','FaceAlpha',0.2);

legend([orange_fill,blue_fill,solid_lines,dashed_lines],{'dx/dt<0','dx/dt>0','stable fixed point','unstable fixed point'},Location="northwest")

daspect([2 3 1])
xlim([-2 2])
ylim([-3 3])
set(gca,'XAxisLocation','origin')
xlabel('r')
ylabel('x*')
title('a=0')

grid on
hold off

subplot(1,3,3)
hold on

a = 2;
r1 = -1:0.01:0;
r2 = 0:0.01:2;
x11 = (a-sqrt(a^2+4.*r1))./2;
x21 = (a+sqrt(a^2+4.*r1))./2;
x12 = (a-sqrt(a^2+4.*r2))./2;
x22 = (a+sqrt(a^2+4.*r2))./2;

solid_lines = plot([r1,r2],[x21,x22],'Color','#0072BD','LineWidth',1.5);
plot([-2,r2],[0,x12],'Color','#0072BD','LineWidth',1.5);
dashed_lines = plot([r1,2],[x11,0],'--','Color','#0072BD','LineWidth',1.5);

blue_fill = fill([flip(r1),r1,r2,2],[flip(x11),x21,x22,0],blue,'EdgeColor','none','FaceAlpha',0.2);
fill([r2,2,-2,-2],[x12,-3,-3,0],blue,'EdgeColor','none','FaceAlpha',0.2);

orange_fill = fill([flip(r1),r1,r2,2,-2,-2],[flip(x11),x21,x22,3,3,0],orange,'EdgeColor','none','FaceAlpha',0.2);
fill([r2,2],[x12,0],orange,'EdgeColor','none','FaceAlpha',0.2);

legend([orange_fill,blue_fill,solid_lines,dashed_lines],{'dx/dt<0','dx/dt>0','stable fixed point','unstable fixed point'},Location="southwest")

daspect([2 3 1])
xlim([-2 2])
ylim([-3 3])
set(gca,'XAxisLocation','origin')
xlabel('r')
ylabel('x*')
title('a=2')

grid on
hold off

set(f,'Position',[100,100,1200,400])