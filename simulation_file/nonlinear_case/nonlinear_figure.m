
%---------------------------------------------------------------------------------------------
% For Paper, 
% "Improving Closed-Loop Dynamic Performance By Assigning Nonlinear Behaviors: Taking Advantages of Concavity Based on Lyapunov Function Methods"
% by Shuyuan Fan and Herbert Werner
% Copyright (c) Institute of Control Systems, Hamburg University of Technology. All rights reserved.
% Licensed under the GPLv3. See LICENSE in the project root for license information.
% Author(s): Shuyuan Fan (shuyuan.fan@tuhh.de, shuyuanfan1993@gmail.com)
%--------------------------------------------------------------------------------------------
%% Nonlinear case

%% Nonlinear case
% x1 0-7
tiledlayout(2,4)
nexttile(1)
plot(out.t,out.x1(:,1),'r',...
    out.t,out.x1(:,2),'b',...
    'linewidth',3);
ylabel('$x_1$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
ylim([-0.1,1.4])
xlim([0,7])
%grid on
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

% x1 7-15
nexttile(5)
plot(out.t,out.x1(:,1),'r',...
    out.t,out.x1(:,2),'b',...
    'linewidth',3);
ylabel('$x_1$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
%ylim([-1.8,1.5])
xlim([7,15])
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

%x2
nexttile(2) 
plot(out.t,out.x2(:,1),'r',...
    out.t,out.x2(:,2),'b',...
    'linewidth',3);
ylabel('$x_2$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
xlim([0,7])
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)
%x2
nexttile(6) 
plot(out.t,out.x2(:,1),'r',...
    out.t,out.x2(:,2),'b',...
    'linewidth',3);
ylabel('$x_2$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
xlim([7,15])
set(gca, 'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

% x3
nexttile(3) 
plot(out.t,out.x3(:,1),'r',...
    out.t,out.x3(:,2),'b',...
    'linewidth',3);
ylabel('$x_3$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
%ylim([-4,1.5]);
xlim([0,7])
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

nexttile(7) 
plot(out.t,out.x3(:,1),'r',...
    out.t,out.x3(:,2),'b',...
    'linewidth',3);
ylabel('$x_3$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
%ylim([-4,1.5]);
xlim([7,15])
set(gca, 'color',[1,1,1],'LineWidth',2,'fontsize',30)
legend('Proposed','Existing','fontsize',50,'interpreter','latex','NumColumns',2)
legend('boxoff')


% all x
nexttile(4)
plot(out.t,out.u(:,1),'r',...
    'linewidth',2);
ylabel('$u$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',100);
ylim([-2.5,1.5]);
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('Proposed','fontsize',20,'interpreter','latex','NumColumns',1)
nexttile(8)
plot(out.t,out.u(:,2),'b',...
    'linewidth',2);
ylabel('$u$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',100);
ylim([-2.5,1.5]);
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('Existing','fontsize',20,'interpreter','latex','NumColumns',1);

%% aa

load('C:\Users\fan\OneDrive - my.swjtu.edu.cn\CLDBNA\nonlinear_case_data.mat')
% x1
figure(1)
plot(out.t,out.x1(:,1),'r',...
    out.t,out.x1(:,2),'b',...
    'linewidth',3);
ylabel('$x_1$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
%ylim([-1.8,1.5])
%xlim([0,10])
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

%% x2
% x1
figure(2)
plot(out.t,out.x2(:,1),'r',...
    out.t,out.x2(:,2),'b',...
    'linewidth',3);
ylabel('$x_2$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

%% x3
% x1
figure(3)
plot(out.t,out.x3(:,1),'r',...
    out.t,out.x3(:,2),'b',...
    'linewidth',3);
ylabel('$x_3$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
ylim([-4,1.5]);
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)
axes('position',[0.3 0.3 0.5 0.3]);
plot(out.t,out.x3(:,1),'r',...
    out.t,out.x3(:,2),'b',...
    'linewidth',1.5);
xlim([14.9,15.5]);
ylim([-0.005,0.035]);
%ylabel('fontsize',100);
%xlabel('fontsize',100);
%set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
grid on


%% Nonlinear case
% x1
tiledlayout(7,4)
nexttile(1,[1,2])

plot(out.t,out.x1(:,1),'r',...
    out.t,out.x1(:,2),'b',...
    'linewidth',3);
ylabel('$x_1$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
%ylim([-1.8,1.5])
xlim([0,15])

%grid on
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)
axes('position',[0.1 0.1 0.5 0.3]);
plot(out.t,out.x3(:,1),'r',...
   out.t,out.x3(:,2),'b',...
    'linewidth',1.5);
xlim([6.5,15]);

%x2
nexttile(3,[2,2]) 
plot(out.t,out.x2(:,1),'r',...
    out.t,out.x2(:,2),'b',...
    'linewidth',3);
ylabel('$x_2$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
xlim([0,15])
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

% x3
nexttile(9,[2,2]) 
plot(out.t,out.x3(:,1),'r',...
    out.t,out.x3(:,2),'b',...
    'linewidth',3);
ylabel('$x_3$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
%ylim([-4,1.5]);
xlim([0,15])
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

% all x
nexttile(11,[1,2])
plot(out.t,out.u(:,1),'r',...
    'linewidth',2);
ylabel('$u$','interpreter','latex','fontsize',200);
%xlabel('Time, sec','fontsize',100);
ylim([-2.5,1.5]);
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','fontsize',20,'interpreter','latex','NumColumns',1)
nexttile(15,[1,2])
plot(out.t,out.u(:,2),'b',...
    'linewidth',2);
ylabel('$u$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',100);
ylim([-2.5,1.5]);
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
lgd=legend('Existing','fontsize',20,'interpreter','latex','NumColumns',1);

%% aa

load('C:\Users\fan\OneDrive - my.swjtu.edu.cn\CLDBNA\nonlinear_case_data.mat')
% x1
figure(1)
plot(out.t,out.x1(:,1),'r',...
    out.t,out.x1(:,2),'b',...
    'linewidth',3);
ylabel('$x_1$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
%ylim([-1.8,1.5])
%xlim([0,10])
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

%% x2
% x1
figure(2)
plot(out.t,out.x2(:,1),'r',...
    out.t,out.x2(:,2),'b',...
    'linewidth',3);
ylabel('$x_2$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)

%% x3
% x1
figure(3)
plot(out.t,out.x3(:,1),'r',...
    out.t,out.x3(:,2),'b',...
    'linewidth',3);
ylabel('$x_3$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
ylim([-4,1.5]);
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','Existing','fontsize',20,'interpreter','latex','NumColumns',1)
axes('position',[0.3 0.3 0.5 0.3]);
plot(out.t,out.x3(:,1),'r',...
    out.t,out.x3(:,2),'b',...
    'linewidth',1.5);
xlim([14.9,15.5]);
ylim([-0.005,0.035]);
%ylabel('fontsize',100);
%xlabel('fontsize',100);
%set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
grid on


%% all x
figure(4)
plot(out.t,out.x1(:,1),'r',...
    out.t,out.x1(:,2),'r--',...
    out.t,out.x2(:,1),'b',...
    out.t,out.x2(:,2),'b--',...
    out.t,out.x3(:,1),'g',...
    out.t,out.x3(:,2),'g--',...
    'linewidth',3);
ylabel('$x_3$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
%ylim([-4,1.5]);
xlim([0,7]);
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed-$x_1$','Existing-$x_1$','Proposed-$x_2$','Existing-$x_2$','Proposed-$x_3$','Existing-$x_3$','fontsize',20,'interpreter','latex','NumColumns',1)
%axes('position',[0.3 0.3 0.5 0.3]);
%plot(out.t,out.x3(:,1),'r',...
 %   out.t,out.x3(:,2),'b',...
  %  'linewidth',1.5);
%xlim([14.9,15.5]);
%ylim([-0.005,0.035]);
%ylabel('fontsize',100);
%xlabel('fontsize',100);
%set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
%grid on

%% u
% x1
figure(5)
tiledlayout(2,1)
nexttile
plot(out.t,out.u(:,1),'r',...
    'linewidth',3);
ylabel('$u$','interpreter','latex','fontsize',200);
%xlabel('Time, sec','fontsize',100);
ylim([-1.5,1]);
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Proposed','fontsize',20,'interpreter','latex','NumColumns',1)
nexttile
plot(out.t,out.u(:,2),'b',...
    'linewidth',3);
ylabel('$u$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',100);
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
lgd=legend('Existing','fontsize',20,'interpreter','latex','NumColumns',1);


