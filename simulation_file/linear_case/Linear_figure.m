%---------------------------------------------------------------------------------------------
% For Paper, 
% "Improving Closed-Loop Dynamic Performance By Assigning Nonlinear Behaviors: Taking Advantages of Concavity Based on Lyapunov Function Methods"
% by Shuyuan Fan and Herbert Werner
% Copyright (c) Institute of Control Systems, Hamburg University of Technology. All rights reserved.
% Licensed under the GPLv3. See LICENSE in the project root for license information.
% Author(s): Shuyuan Fan (shuyuan.fan@tuhh.de, shuyuanfan1993@gmail.com)
%--------------------------------------------------------------------------------------------

%%
load('C:\Users\fan\OneDrive - my.swjtu.edu.cn\CLDBNA\linea_case_withd.mat')

%% Nonlinear case
% x1
figure(1)
tiledlayout(1,4)
nexttile
plot(out.tout,out.CLDBNA_x.Data(1,:),'r',...
    out.tout,out.CLDBLA_x.Data(1,:),'b',...
    'linewidth',3);
ylabel('$x_1$','interpreter','latex','fontsize',200);
xlabel('Time, sec','fontsize',200);
ylim([-0.2,2.2])
%xlim([0,10])
%grid on
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
legend('CLDBNA','CLDBLA','fontsize',30,'interpreter','latex','NumColumns',1)
legend('boxoff')

%x2
nexttile
plot(out.tout,out.CLDBNA_x.Data(2,:),'r',...
    out.tout,out.CLDBLA_x.Data(2,:),'b',...
    'linewidth',3);
ylabel('$x_2$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-0.2,1.2])
%xlim([0,10])
%grid on
set(gca,'ytick',-2:0.5:2,'color',[1,1,1],'LineWidth',2,'fontsize',30)
legend('CLDBNA','CLDBLA','fontsize',30,'interpreter','latex','NumColumns',1)
legend('boxoff')

% U1
nexttile
plot(out.tout,out.CLDBNA_u.Data(1,:),'r',...
    out.tout,out.CLDBLA_u.Data(1,:),'b',...
    'linewidth',3);
ylabel('$u_1$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-0.5,1.6])
%xlim([0,10])
%grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',30)
legend('CLDBNA','CLDBLA','fontsize',30,'interpreter','latex','NumColumns',1)
legend('boxoff')

% U2
nexttile
plot(out.tout,out.CLDBNA_u.Data(2,:),'r',...
     out.tout,out.CLDBLA_u.Data(2,:),'b',...
    'linewidth',3);
ylabel('$u_2$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-6.5,0.5])
%xlim([0,10])
%grid on
set(gca,'ytick',-6:2:6,'color',[1,1,1],'LineWidth',2,'fontsize',30)
legend('CLDBNA','CLDBLA','fontsize',30,'interpreter','latex','NumColumns',1)
legend('boxoff')

%% Nonlinear case
% x1
figure(1)
plot(out.tout,out.CLDBNA_x.Data(1,:),'r',...
    out.tout,out.CLDBLA_x.Data(1,:),'b',...
    'linewidth',3);
ylabel('$x_1$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
%ylim([-1.8,1.5])
%xlim([0,10])
%grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('CLDBNA','CLDBLA','fontsize',20,'interpreter','latex','NumColumns',1)

%% x2
figure(2)
plot(out.tout,out.CLDBNA_x.Data(2,:),'r',...
    out.tout,out.CLDBLA_x.Data(2,:),'b',...
    'linewidth',3);
ylabel('$x_2$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
%ylim([-1.8,1.5])
%xlim([0,10])
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('CLDBNA','CLDBLA','fontsize',20,'interpreter','latex','NumColumns',1)

%% U1
figure(3)
plot(out.tout,out.CLDBNA_u.Data(1,:),'r',...
    out.tout,out.CLDBLA_u.Data(1,:),'b',...
    'linewidth',3);
ylabel('$u$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
%ylim([-1.8,1.5])
%xlim([0,10])
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('CLDBNA-$u_1$','CLDBLA-$u_1$','fontsize',20,'interpreter','latex','NumColumns',1)

%% U2
figure(4)
plot(out.tout,out.CLDBNA_u.Data(2,:),'r',...
     out.tout,out.CLDBLA_u.Data(2,:),'b',...
    'linewidth',3);
ylabel('$u$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
%ylim([-1.8,1.5])
%xlim([0,10])
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('CLDBNA-$u_2$','CLDBLA-$u_2$','fontsize',20,'interpreter','latex','NumColumns',1)


%% all x
figure(5)
plot(out.tout,out.CLDBNA_x.Data(1,:),'r',...
    out.tout,out.CLDBNA_x.Data(2,:),'r--',...
    out.tout,out.CLDBLA_x.Data(1,:),'b',...
    out.tout,out.CLDBLA_x.Data(2,:),'b--',...
    'linewidth',3);
ylabel('States, $x$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
%ylim([-1.8,1.5])
%xlim([0,10])
%grid on
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('CLDBNA-$x_1$','CLDBNA-$x_2$','CLDBLA-$x_1$','CLDBLA-$x_2$','fontsize',20,'interpreter','latex','NumColumns',2)
legend('boxoff')

%% all x
figure(6)
plot(out.tout,out.CLDBNA_u.Data(1,:),'r',...
    out.tout,out.CLDBNA_u.Data(2,:),'r--',...
    out.tout,out.CLDBLA_u.Data(1,:),'b',...
    out.tout,out.CLDBLA_u.Data(2,:),'b--',...
    'linewidth',3);
ylabel('Inputs, u','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-7,2])
%xlim([0,10])
%grid on
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('CLDBNA-$u_1$','CLDBNA-$u_2$','CLDBLA-$u_1$','CLDBLA-$u_2$','fontsize',20,'interpreter','latex','NumColumns',2)
legend('boxoff')



%% rx
figure(7)
plot(out.tout,out.CLDBNA_x.Data(1,:),'r',...
    out.tout,out.CLDBNA_x.Data(2,:),'b',...
    out.tout,out.CLDBLA_x.Data(1,:),'r--',...
    out.tout,out.CLDBLA_x.Data(2,:),'b--',...
    'linewidth',3);
ylabel('$x$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
%ylim([-1.8,1.5])
%xlim([0,10])
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('CLDBNA-$x_1$','CLDBNA-$x_2$','CLDBLA-$x_1$','CLDBLA-$x_2$','fontsize',20,'interpreter','latex','NumColumns',1)



