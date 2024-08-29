
% Script for plotting the results of I. inquinata life tables analysis
% Created by Luca Rossini on 10 December 2023
% Last update 14 December 2023
% e-mail: luca.rossini@unitus.it

% This script is recalled by 'AnalisiStepMatlab.m'

% This script plots the results at 70RH

%% Boxplot of the Egg development
% Note: the boxplot in Matlab wants first the y values and then the x

figure('Name', 'Analysis 70RH')

boxplot(DevRate70RH_Egg, Temp70RH_Egg)
title('Egg to larva development')
xlabel('Temperature (°C)')
ylabel('Development rates (1/day)')


% Boxplot of the Larva development

figure('Name', 'Analysis 70RH')

boxplot(DevRate70RH_Larva, Temp70RH_Larva)
title('Larva to pupa development')
xlabel('Temperature (°C)')
ylabel('Development rates (1/day)')


% Boxplot of the Pupa development

figure('Name', 'Analysis 70RH')

boxplot(DevRate70RH_Pupa, Temp70RH_Pupa)
title('Pupa to adult development')
xlabel('Temperature (°C)')
ylabel('Development rates (1/day)')


%% Plot best fit functions - EGG development

    % For loop to evaluate the expressions

BriStoreEgg_70RH = [];
LogStoreEgg_70RH = [];
LacOneStoreEgg_70RH = [];
LacTwoStoreEgg_70RH = [];
SDMStoreEgg_70RH = [];
TempStoreEgg_70RH = [];

for j = 0 * 100 : 4500

    i = j * 0.01;
    
        % Briere

    if i > BriRes_Egg_70RH(3)

        BriTMP = 0;
    
    else

        BriTMP = BriRes_Egg_70RH(1) * i * ( i - BriRes_Egg_70RH(2) ) * ...
                (( BriRes_Egg_70RH(3) - i )^( 1 / BriRes_Egg_70RH(4) ));
    end

    BriStoreEgg_70RH = [BriStoreEgg_70RH, BriTMP];
    TempStoreEgg_70RH = [TempStoreEgg_70RH, i];

        % Logan

    if i > LogRes_Egg_70RH(3)

        LogTMP = 0;

    else

        LogTMP = LogRes_Egg_70RH(1) * ( exp( LogRes_Egg_70RH(2) * i) - ...
                 exp( LogRes_Egg_70RH(2) * LogRes_Egg_70RH(3) - ...
                 ( ( LogRes_Egg_70RH(3) - i) / LogRes_Egg_70RH(4) ) ) );

    end

    LogStoreEgg_70RH = [LogStoreEgg_70RH, LogTMP];

        % Lactin-1

    if i > LacOneRes_Egg_70RH(2)

        LacOneTMP = 0;

    else

        LacOneTMP = exp( LacOneRes_Egg_70RH(1) * i) - ...
                    exp( LacOneRes_Egg_70RH(1) * LacOneRes_Egg_70RH(2) - ...
                    ( ( LacOneRes_Egg_70RH(2) - i ) / LacOneRes_Egg_70RH(3) ) );

    end

    LacOneStoreEgg_70RH = [LacOneStoreEgg_70RH, LacOneTMP];

        % Lactin-2

    if i > LacTwoRes_Egg_70RH(2)

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Egg_70RH(1) * i) - ...
                    exp( LacTwoRes_Egg_70RH(1) * LacTwoRes_Egg_70RH(2) - ...
                    ( ( LacTwoRes_Egg_70RH(2) - i ) / LacTwoRes_Egg_70RH(3) ) ) + ...
                    LacTwoRes_Egg_70RH(4);

    end

    if LacTwoTMP < 0

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Egg_70RH(1) * i) - ...
                    exp( LacTwoRes_Egg_70RH(1) * LacTwoRes_Egg_70RH(2) - ...
                    ( ( LacTwoRes_Egg_70RH(2) - i ) / LacTwoRes_Egg_70RH(3) ) ) + ...
                    LacTwoRes_Egg_70RH(4);
    
    end
    
    LacTwoStoreEgg_70RH = [LacTwoStoreEgg_70RH, LacTwoTMP];

        % Sharpe and De Michele

    SDMTMP = (i * ( exp( SDMRes_Egg_70RH(1) - ...
             (SDMRes_Egg_70RH(2) / i ) ) ) ) / ((1 + exp( SDMRes_Egg_70RH(3) ...
             - ( SDMRes_Egg_70RH(4) / i ) ) + exp( SDMRes_Egg_70RH(5) - ...
             ( SDMRes_Egg_70RH(6) / i ) ) ) );

    SDMStoreEgg_70RH = [SDMStoreEgg_70RH, SDMTMP];

end


%% Plot best fit functions - Larva development

    % For loop to evaluate the expressions

BriStoreLarva_70RH = [];
LogStoreLarva_70RH = [];
LacOneStoreLarva_70RH = [];
LacTwoStoreLarva_70RH = [];
SDMStoreLarva_70RH = [];
TempStoreLarva_70RH = [];

for j = 0 * 100 : 4500

    i = j * 0.01;
    
        % Briere

    if i > BriRes_Larva_70RH(3)

        BriTMP = 0;
    
    else

        BriTMP = BriRes_Larva_70RH(1) * i * ( i - BriRes_Larva_70RH(2) ) * ...
                (( BriRes_Larva_70RH(3) - i )^( 1 / BriRes_Larva_70RH(4) ));
    end

    BriStoreLarva_70RH = [BriStoreLarva_70RH, BriTMP];
    TempStoreLarva_70RH = [TempStoreLarva_70RH, i];

        % Logan

    if i > LogRes_Larva_70RH(3)

        LogTMP = 0;

    else

        LogTMP = LogRes_Larva_70RH(1) * ( exp( LogRes_Larva_70RH(2) * i) - ...
                 exp( LogRes_Larva_70RH(2) * LogRes_Larva_70RH(3) - ...
                 ( ( LogRes_Larva_70RH(3) - i) / LogRes_Larva_70RH(4) ) ) );

    end

    LogStoreLarva_70RH = [LogStoreLarva_70RH, LogTMP];

        % Lactin-1

    if i > LacOneRes_Larva_70RH(2)

        LacOneTMP = 0;

    else

        LacOneTMP = exp( LacOneRes_Larva_70RH(1) * i) - ...
                    exp( LacOneRes_Larva_70RH(1) * LacOneRes_Larva_70RH(2) - ...
                    ( ( LacOneRes_Larva_70RH(2) - i ) / LacOneRes_Larva_70RH(3) ) );

    end

    LacOneStoreLarva_70RH = [LacOneStoreLarva_70RH, LacOneTMP];

        % Lactin-2

    if i > LacTwoRes_Larva_70RH(2)

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Larva_70RH(1) * i) - ...
                    exp( LacTwoRes_Larva_70RH(1) * LacTwoRes_Larva_70RH(2) - ...
                    ( ( LacTwoRes_Larva_70RH(2) - i ) / LacTwoRes_Larva_70RH(3) ) ) + ...
                    LacTwoRes_Larva_70RH(4);

    end

    if LacTwoTMP < 0;

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Larva_70RH(1) * i) - ...
                    exp( LacTwoRes_Larva_70RH(1) * LacTwoRes_Larva_70RH(2) - ...
                    ( ( LacTwoRes_Larva_70RH(2) - i ) / LacTwoRes_Larva_70RH(3) ) ) + ...
                    LacTwoRes_Larva_70RH(4);
    
    end

    LacTwoStoreLarva_70RH = [LacTwoStoreLarva_70RH, LacTwoTMP];

        % Sharpe and De Michele

    SDMTMP = (i * ( exp( SDMRes_Larva_70RH(1) - ...
             (SDMRes_Larva_70RH(2) / i ) ) ) ) / ((1 + exp( SDMRes_Larva_70RH(3) ...
             - ( SDMRes_Larva_70RH(4) / i ) ) + exp( SDMRes_Larva_70RH(5) - ...
             ( SDMRes_Larva_70RH(6) / i ) ) ) );

    SDMStoreLarva_70RH = [SDMStoreLarva_70RH, SDMTMP];
end


%% Plot best fit functions - Pupa development

    % For loop to evaluate the expressions

BriStorePupa_70RH = [];
LogStorePupa_70RH = [];
LacOneStorePupa_70RH = [];
LacTwoStorePupa_70RH = [];
SDMStorePupa_70RH = [];
TempStorePupa_70RH = [];

for j = 0 * 100 : 4500

    i = j * 0.01;
    
        % Briere

    if i > BriRes_Pupa_70RH(3)

        BriTMP = 0;
    
    else

        BriTMP = BriRes_Pupa_70RH(1) * i * ( i - BriRes_Pupa_70RH(2) ) * ...
                (( BriRes_Pupa_70RH(3) - i )^( 1 / BriRes_Pupa_70RH(4) ));
    end

    BriStorePupa_70RH = [BriStorePupa_70RH, BriTMP];
    TempStorePupa_70RH = [TempStorePupa_70RH, i];

        % Logan

    if i > LogRes_Pupa_70RH(3)

        LogTMP = 0;

    else

        LogTMP = LogRes_Pupa_70RH(1) * ( exp( LogRes_Pupa_70RH(2) * i) - ...
                 exp( LogRes_Pupa_70RH(2) * LogRes_Pupa_70RH(3) - ...
                 ( ( LogRes_Pupa_70RH(3) - i) / LogRes_Pupa_70RH(4) ) ) );

    end

    LogStorePupa_70RH = [LogStorePupa_70RH, LogTMP];

        % Lactin-1

    if i > LacOneRes_Pupa_70RH(2)

        LacOneTMP = 0;

    else

        LacOneTMP = exp( LacOneRes_Pupa_70RH(1) * i) - ...
                    exp( LacOneRes_Pupa_70RH(1) * LacOneRes_Pupa_70RH(2) - ...
                    ( ( LacOneRes_Pupa_70RH(2) - i ) / LacOneRes_Pupa_70RH(3) ) );

    end

    LacOneStorePupa_70RH = [LacOneStorePupa_70RH, LacOneTMP];

        % Lactin-2

    if i > LacTwoRes_Pupa_70RH(2)

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Pupa_70RH(1) * i) - ...
                    exp( LacTwoRes_Pupa_70RH(1) * LacTwoRes_Pupa_70RH(2) - ...
                    ( ( LacTwoRes_Pupa_70RH(2) - i ) / LacTwoRes_Pupa_70RH(3) ) ) + ...
                    LacTwoRes_Pupa_70RH(4);

    end

    if LacTwoTMP < 0

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Pupa_70RH(1) * i) - ...
                    exp( LacTwoRes_Pupa_70RH(1) * LacTwoRes_Pupa_70RH(2) - ...
                    ( ( LacTwoRes_Pupa_70RH(2) - i ) / LacTwoRes_Pupa_70RH(3) ) ) + ...
                    LacTwoRes_Pupa_70RH(4);
    
    end

    LacTwoStorePupa_70RH = [LacTwoStorePupa_70RH, LacTwoTMP];

        % Sharpe and De Michele

    SDMTMP = (i * ( exp( SDMRes_Pupa_70RH(1) - ...
             (SDMRes_Pupa_70RH(2) / i ) ) ) ) / ((1 + exp( SDMRes_Pupa_70RH(3) ...
             - ( SDMRes_Pupa_70RH(4) / i ) ) + exp( SDMRes_Pupa_70RH(5) - ...
             ( SDMRes_Pupa_70RH(6) / i ) ) ) );

    SDMStorePupa_70RH = [SDMStorePupa_70RH, SDMTMP];
end


    %% Make the plots - Fit and experimental data

    % Egg

figure('Name', 'Analysis 70RH')
hold on

boxchart(Temp70RH_Egg, DevRate70RH_Egg)
plot(TempStoreEgg_70RH, BriStoreEgg_70RH, '-.', 'LineWidth', 1.25)
plot(TempStoreEgg_70RH, LogStoreEgg_70RH, '--', 'LineWidth', 1.25)
plot(TempStoreEgg_70RH, LacOneStoreEgg_70RH, ':', 'LineWidth', 1.25)
plot(TempStoreEgg_70RH, LacTwoStoreEgg_70RH, '-', 'LineWidth', 1.25)
plot(TempStoreEgg_70RH, SDMStoreEgg_70RH, 'LineWidth', 1.25)

title('Egg to larva development')
xlabel('Temperature (°C)')
ylabel('Development rate (1/days)')
xlim([0 39]);
ylim([0 0.18]);
legend('Experimental data', 'Briere', 'Logan', ' Lactin-1', 'Lactin-2', ...
       'Sharpe and De Michele')

    % Larva
    
figure('Name', 'Analysis 70RH')
hold on

boxchart(Temp70RH_Larva, DevRate70RH_Larva)
plot(TempStoreLarva_70RH, BriStoreLarva_70RH, '-.', 'LineWidth', 1.25)
plot(TempStoreLarva_70RH, LogStoreLarva_70RH, '--', 'LineWidth', 1.25)
plot(TempStoreLarva_70RH, LacOneStoreLarva_70RH, ':', 'LineWidth', 1.25)
plot(TempStoreLarva_70RH, LacTwoStoreLarva_70RH, '-', 'LineWidth', 1.25)
plot(TempStoreLarva_70RH, SDMStoreLarva_70RH, 'LineWidth', 1.25)

title('Larva to pupa development')
xlabel('Temperature (°C)')
ylabel('Development rate (1/days)')
xlim([0 37]);
ylim([0 0.045]);
legend('Experimental data', 'Briere', 'Logan', ' Lactin-1', 'Lactin-2', ...
       'Sharpe and De Michele')

    % Pupa
    
figure('Name', 'Analysis 70RH')
hold on

boxchart(Temp70RH_Pupa, DevRate70RH_Pupa)
plot(TempStorePupa_70RH, BriStorePupa_70RH, '-.', 'LineWidth', 1.25)
plot(TempStorePupa_70RH, LogStorePupa_70RH, '--', 'LineWidth', 1.25)
plot(TempStorePupa_70RH, LacOneStorePupa_70RH, ':', 'LineWidth', 1.25)
plot(TempStorePupa_70RH, LacTwoStorePupa_70RH, '-', 'LineWidth', 1.25)
plot(TempStorePupa_70RH, SDMStorePupa_70RH, 'LineWidth', 1.25)

title('Pupa to adult development')
xlabel('Temperature (°C)')
ylabel('Development rate (1/days)')
xlim([0 36]);
ylim([0 0.35]);
legend('Experimental data', 'Briere', 'Logan', ' Lactin-1', 'Lactin-2', ...
       'Sharpe and De Michele')


%% Plotting the distribution of raw data - EGG development

figure('Name', 'Analysis 70RH')

    % Eggs 15

subplot(4,3,1);

TimeEggs_1570 = linspace(1, max(DelayEggs_1570), max(DelayEggs_1570));

hist(DelayEggs_1570, TimeEggs_1570, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 15 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 17

subplot(4,3,2);

TimeEggs_1770 = linspace(1, max(DelayEggs_1770), max(DelayEggs_1770));

hist(DelayEggs_1770, TimeEggs_1770, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 17 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 18

subplot(4,3,3);

TimeEggs_1870 = linspace(1, max(DelayEggs_1870), max(DelayEggs_1870));

hist(DelayEggs_1870, TimeEggs_1870, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 18 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 21

subplot(4,3,4);

TimeEggs_2170 = linspace(1, max(DelayEggs_2170), max(DelayEggs_2170));

hist(DelayEggs_2170, TimeEggs_2170, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 21 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 24

subplot(4,3,5);

TimeEggs_2470 = linspace(1, max(DelayEggs_2470), max(DelayEggs_2470));

hist(DelayEggs_2470, TimeEggs_2470, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 24 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 26

subplot(4,3,6);

TimeEggs_2670 = linspace(1, max(DelayEggs_2670), max(DelayEggs_2670));

hist(DelayEggs_2670, TimeEggs_2670, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 26 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 29

subplot(4,3,7);

TimeEggs_2970 = linspace(1, max(DelayEggs_2970), max(DelayEggs_2970));

hist(DelayEggs_2970, TimeEggs_2970, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 29 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 32

subplot(4,3,8);

TimeEggs_3270 = linspace(1, max(DelayEggs_3270), max(DelayEggs_3270));

hist(DelayEggs_3270, TimeEggs_3270, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 32 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 34

subplot(4,3,9);

TimeEggs_3470 = linspace(1, max(DelayEggs_3470), max(DelayEggs_3470));

hist(DelayEggs_3470, TimeEggs_3470, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 34 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 36

subplot(4,3,10);

TimeEggs_3670 = linspace(1, max(DelayEggs_3670), max(DelayEggs_3670));

hist(DelayEggs_3670, TimeEggs_3670, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 36 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])


%% Plotting the distribution of raw data - Larva development

figure('Name', 'Analysis 70RH')

    % Larva 21

subplot(3,2,1);

TimeLarva_2170 = linspace(1, max(DelayLarva_2170), max(DelayLarva_2170));

hist(DelayLarva_2170, TimeLarva_2170, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 21 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Larva 24

subplot(3,2,2);

TimeLarva_2470 = linspace(1, max(DelayLarva_2470), max(DelayLarva_2470));

hist(DelayLarva_2470, TimeLarva_2470, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 24 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Larva 26

subplot(3,2,3);

TimeLarva_2670 = linspace(1, max(DelayLarva_2670), max(DelayLarva_2670));

hist(DelayLarva_2670, TimeLarva_2670, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 26 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Larva 29

subplot(3,2,4);

TimeLarva_2970 = linspace(1, max(DelayLarva_2970), max(DelayLarva_2970));

hist(DelayLarva_2970, TimeLarva_2970, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 29 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Larva 32

subplot(3,2,5);

TimeLarva_3270 = linspace(1, max(DelayLarva_3270), max(DelayLarva_3270));

hist(DelayLarva_3270, TimeLarva_3270, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 32 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Larva 34

subplot(3,2,6);

TimeLarva_3470 = linspace(1, max(DelayLarva_3470), max(DelayLarva_3470));

hist(DelayLarva_3470, TimeLarva_3470, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 34 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')



%% Plotting the distribution of raw data - Pupa development

figure('Name', 'Analysis 70RH')

    % Pupa 21

subplot(3,2,1);

TimePupa_2170 = linspace(1, max(DelayPupa_2170), max(DelayPupa_2170));

hist(DelayPupa_2170, TimePupa_2170, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Pupa 21 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Pupa 24

subplot(3,2,2);

TimePupa_2470 = linspace(1, max(DelayPupa_2470), max(DelayPupa_2470));

hist(DelayPupa_2470, TimePupa_2470, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Pupa 24 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Pupa 26

subplot(3,2,3);

TimePupa_2670 = linspace(1, max(DelayPupa_2670), max(DelayPupa_2670));

hist(DelayPupa_2670, TimePupa_2670, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Pupa 26 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Pupa 29

subplot(3,2,4);

TimePupa_2970 = linspace(1, max(DelayPupa_2970), max(DelayPupa_2970));

hist(DelayPupa_2970, TimePupa_2970, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Pupa 29 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Pupa 32

subplot(3,2,5);

TimePupa_3270 = linspace(1, max(DelayPupa_3270), max(DelayPupa_3270));

hist(DelayPupa_3270, TimePupa_3270, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Pupa 32 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Pupa 34

subplot(3,2,6);

TimePupa_3470 = linspace(1, max(DelayPupa_3470), max(DelayPupa_3470));

hist(DelayPupa_3470, TimePupa_3470, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Pupa 34 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')






