
% Script for plotting the results of I. inquinata life tables analysis
% Created by Luca Rossini on 13 December 2023
% Last update 15 December 2023
% e-mail: luca.rossini@unitus.it

% This script is recalled by 'AnalisiStepMatlab.m'

% This script plots the results at 35RH

%% Boxplot of the Egg development
% Note: the boxplot in Matlab wants first the y values and then the x

figure('Name', 'Analysis 35RH')

boxplot(DevRate35RH_Egg, Temp35RH_Egg)
title('Egg to larva development')
xlabel('Temperature (°C)')
ylabel('Development rates (1/day)')


% Boxplot of the Larva development

figure('Name', 'Analysis 35RH')

boxplot(DevRate35RH_Larva, Temp35RH_Larva)
title('Larva to pupa development')
xlabel('Temperature (°C)')
ylabel('Development rates (1/day)')


% Boxplot of the Pupa development

figure('Name', 'Analysis 35RH')

boxplot(DevRate35RH_Pupa, Temp35RH_Pupa)
title('Pupa to adult development')
xlabel('Temperature (°C)')
ylabel('Development rates (1/day)')


%% Plot best fit functions - EGG development

    % For loop to evaluate the expressions

BriStoreEgg_35RH = [];
LogStoreEgg_35RH = [];
LacOneStoreEgg_35RH = [];
LacTwoStoreEgg_35RH = [];
SDMStoreEgg_35RH = [];
TempStoreEgg_35RH = [];

for j = 0 * 100 : 4500

    i = j * 0.01;
    
        % Briere

    if i > BriRes_Egg_35RH(3)

        BriTMP = 0;
    
    else

        BriTMP = BriRes_Egg_35RH(1) * i * ( i - BriRes_Egg_35RH(2) ) * ...
                (( BriRes_Egg_35RH(3) - i )^( 1 / BriRes_Egg_35RH(4) ));
    end

    BriStoreEgg_35RH = [BriStoreEgg_35RH, BriTMP];
    TempStoreEgg_35RH = [TempStoreEgg_35RH, i];

        % Logan

    if i > LogRes_Egg_35RH(3)

        LogTMP = 0;

    else

        LogTMP = LogRes_Egg_35RH(1) * ( exp( LogRes_Egg_35RH(2) * i) - ...
                 exp( LogRes_Egg_35RH(2) * LogRes_Egg_35RH(3) - ...
                 ( ( LogRes_Egg_35RH(3) - i) / LogRes_Egg_35RH(4) ) ) );

    end

    LogStoreEgg_35RH = [LogStoreEgg_35RH, LogTMP];

        % Lactin-1

    if i > LacOneRes_Egg_35RH(2)

        LacOneTMP = 0;

    else

        LacOneTMP = exp( LacOneRes_Egg_35RH(1) * i) - ...
                    exp( LacOneRes_Egg_35RH(1) * LacOneRes_Egg_35RH(2) - ...
                    ( ( LacOneRes_Egg_35RH(2) - i ) / LacOneRes_Egg_35RH(3) ) );

    end

    LacOneStoreEgg_35RH = [LacOneStoreEgg_35RH, LacOneTMP];

        % Lactin-2

    if i > LacTwoRes_Egg_35RH(2)

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Egg_35RH(1) * i) - ...
                    exp( LacTwoRes_Egg_35RH(1) * LacTwoRes_Egg_35RH(2) - ...
                    ( ( LacTwoRes_Egg_35RH(2) - i ) / LacTwoRes_Egg_35RH(3) ) ) + ...
                    LacTwoRes_Egg_35RH(4);

    end

    if LacTwoTMP < 0

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Egg_35RH(1) * i) - ...
                    exp( LacTwoRes_Egg_35RH(1) * LacTwoRes_Egg_35RH(2) - ...
                    ( ( LacTwoRes_Egg_35RH(2) - i ) / LacTwoRes_Egg_35RH(3) ) ) + ...
                    LacTwoRes_Egg_35RH(4);
    
    end
    
    LacTwoStoreEgg_35RH = [LacTwoStoreEgg_35RH, LacTwoTMP];

        % Sharpe and De Michele

    SDMTMP = (i * ( exp( SDMRes_Egg_35RH(1) - ...
             (SDMRes_Egg_35RH(2) / i ) ) ) ) / ((1 + exp( SDMRes_Egg_35RH(3) ...
             - ( SDMRes_Egg_35RH(4) / i ) ) + exp( SDMRes_Egg_35RH(5) - ...
             ( SDMRes_Egg_35RH(6) / i ) ) ) );

    SDMStoreEgg_35RH = [SDMStoreEgg_35RH, SDMTMP];

end


%% Plot best fit functions - Larva development

    % For loop to evaluate the expressions

BriStoreLarva_35RH = [];
LogStoreLarva_35RH = [];
LacOneStoreLarva_35RH = [];
LacTwoStoreLarva_35RH = [];
SDMStoreLarva_35RH = [];
TempStoreLarva_35RH = [];

for j = 0 * 100 : 4500

    i = j * 0.01;
    
        % Briere

    if i > BriRes_Larva_35RH(3)

        BriTMP = 0;
    
    else

        BriTMP = BriRes_Larva_35RH(1) * i * ( i - BriRes_Larva_35RH(2) ) * ...
                (( BriRes_Larva_35RH(3) - i )^( 1 / BriRes_Larva_35RH(4) ));
    end

    BriStoreLarva_35RH = [BriStoreLarva_35RH, BriTMP];
    TempStoreLarva_35RH = [TempStoreLarva_35RH, i];

        % Logan

    if i > LogRes_Larva_35RH(3)

        LogTMP = 0;

    else

        LogTMP = LogRes_Larva_35RH(1) * ( exp( LogRes_Larva_35RH(2) * i) - ...
                 exp( LogRes_Larva_35RH(2) * LogRes_Larva_35RH(3) - ...
                 ( ( LogRes_Larva_35RH(3) - i) / LogRes_Larva_35RH(4) ) ) );

    end

    LogStoreLarva_35RH = [LogStoreLarva_35RH, LogTMP];

        % Lactin-1

    if i > LacOneRes_Larva_35RH(2)

        LacOneTMP = 0;

    else

        LacOneTMP = exp( LacOneRes_Larva_35RH(1) * i) - ...
                    exp( LacOneRes_Larva_35RH(1) * LacOneRes_Larva_35RH(2) - ...
                    ( ( LacOneRes_Larva_35RH(2) - i ) / LacOneRes_Larva_35RH(3) ) );

    end

    LacOneStoreLarva_35RH = [LacOneStoreLarva_35RH, LacOneTMP];

        % Lactin-2

    if i > LacTwoRes_Larva_35RH(2)

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Larva_35RH(1) * i) - ...
                    exp( LacTwoRes_Larva_35RH(1) * LacTwoRes_Larva_35RH(2) - ...
                    ( ( LacTwoRes_Larva_35RH(2) - i ) / LacTwoRes_Larva_35RH(3) ) ) + ...
                    LacTwoRes_Larva_35RH(4);

    end

    if LacTwoTMP < 0;

        LacTwoTMP = 0;

    else

        LacTwoTMP = exp( LacTwoRes_Larva_35RH(1) * i) - ...
                    exp( LacTwoRes_Larva_35RH(1) * LacTwoRes_Larva_35RH(2) - ...
                    ( ( LacTwoRes_Larva_35RH(2) - i ) / LacTwoRes_Larva_35RH(3) ) ) + ...
                    LacTwoRes_Larva_35RH(4);
    
    end

    LacTwoStoreLarva_35RH = [LacTwoStoreLarva_35RH, LacTwoTMP];

        % Sharpe and De Michele

    SDMTMP = (i * ( exp( SDMRes_Larva_35RH(1) - ...
             (SDMRes_Larva_35RH(2) / i ) ) ) ) / ((1 + exp( SDMRes_Larva_35RH(3) ...
             - ( SDMRes_Larva_35RH(4) / i ) ) + exp( SDMRes_Larva_35RH(5) - ...
             ( SDMRes_Larva_35RH(6) / i ) ) ) );

    SDMStoreLarva_35RH = [SDMStoreLarva_35RH, SDMTMP];
end


    %% Make the plots - Fit and experimental data

    % Egg

figure('Name', 'Analysis 35RH')
hold on

boxchart(Temp35RH_Egg, DevRate35RH_Egg)
plot(TempStoreEgg_35RH, BriStoreEgg_35RH, '-.', 'LineWidth', 1.25)
plot(TempStoreEgg_35RH, LogStoreEgg_35RH, '--', 'LineWidth', 1.25)
plot(TempStoreEgg_35RH, LacOneStoreEgg_35RH, ':', 'LineWidth', 1.25)
plot(TempStoreEgg_35RH, LacTwoStoreEgg_35RH, '-', 'LineWidth', 1.25)
plot(TempStoreEgg_35RH, SDMStoreEgg_35RH, 'LineWidth', 1.25)

title('Egg to larva development')
xlabel('Temperature (°C)')
ylabel('Development rate (1/days)')
ylim([0 0.18]);
xlim([0 40]);
legend('Experimental data', 'Briere', 'Logan', ' Lactin-1', 'Lactin-2', ...
       'Sharpe and De Michele')

    % Larva
    
figure('Name', 'Analysis 35RH')
hold on

boxchart(Temp35RH_Larva, DevRate35RH_Larva)
plot(TempStoreLarva_35RH, BriStoreLarva_35RH, '-.', 'LineWidth', 1.25)
plot(TempStoreLarva_35RH, LogStoreLarva_35RH, '--', 'LineWidth', 1.25)
plot(TempStoreLarva_35RH, LacOneStoreLarva_35RH, ':', 'LineWidth', 1.25)
plot(TempStoreLarva_35RH, LacTwoStoreLarva_35RH, '-', 'LineWidth', 1.25)
plot(TempStoreLarva_35RH, SDMStoreLarva_35RH, 'LineWidth', 1.25)

title('Larva to pupa development')
xlabel('Temperature (°C)')
ylabel('Development rate (1/days)')
ylim([0 0.04]);
xlim([0 40]);
legend('Experimental data', 'Briere', 'Logan', ' Lactin-1', 'Lactin-2', ...
       'Sharpe and De Michele')


%% Plotting the distribution of raw data - EGG development

figure('Name', 'Analysis 35RH')

    % Eggs 15

subplot(4,2,1);

TimeEggs_1535 = linspace(1, max(DelayEggs_1535), max(DelayEggs_1535));

hist(DelayEggs_1535, TimeEggs_1535, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 15 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 17

subplot(4,2,2);

TimeEggs_1735 = linspace(1, max(DelayEggs_1735), max(DelayEggs_1735));

hist(DelayEggs_1735, TimeEggs_1735, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 17 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])


    % Eggs 21

subplot(4,2,3);

TimeEggs_2135 = linspace(1, max(DelayEggs_2135), max(DelayEggs_2135));

hist(DelayEggs_2135, TimeEggs_2135, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 21 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])


    % Eggs 26

subplot(4,2,4);

TimeEggs_2635 = linspace(1, max(DelayEggs_2635), max(DelayEggs_2635));

hist(DelayEggs_2635, TimeEggs_2635, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 26 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 29

subplot(4,2,5);

TimeEggs_2935 = linspace(1, max(DelayEggs_2935), max(DelayEggs_2935));

hist(DelayEggs_2935, TimeEggs_2935, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 29 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])


    % Eggs 34

subplot(4,2,6);

TimeEggs_3435 = linspace(1, max(DelayEggs_3435), max(DelayEggs_3435));

hist(DelayEggs_3435, TimeEggs_3435, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 34 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])

    % Eggs 36

subplot(4,2,7);

TimeEggs_3635 = linspace(1, max(DelayEggs_3635), max(DelayEggs_3635));

hist(DelayEggs_3635, TimeEggs_3635, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Eggs 36 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
xlim([0 35])


%% Plotting the distribution of raw data - Larva development

figure('Name', 'Analysis 35RH')

    % Larva 21

subplot(2,2,1);

TimeLarva_2135 = linspace(1, max(DelayLarva_2135), max(DelayLarva_2135));

hist(DelayLarva_2135, TimeLarva_2135, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 21 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Larva 26

subplot(2,2,2);

TimeLarva_2635 = linspace(1, max(DelayLarva_2635), max(DelayLarva_2635));

hist(DelayLarva_2635, TimeLarva_2635, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 26 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Larva 29

subplot(2,2,3);

TimeLarva_2935 = linspace(1, max(DelayLarva_2935), max(DelayLarva_2935));

hist(DelayLarva_2935, TimeLarva_2935, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 29 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Larva 34

subplot(2,2,4);

TimeLarva_3435 = linspace(1, max(DelayLarva_3435), max(DelayLarva_3435));

hist(DelayLarva_3435, TimeLarva_3435, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Larva 34 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


%% Plotting the distribution of raw data - Pupa development

figure('Name', 'Analysis 35RH')

    % Pupa 21

subplot(3,1,1);

TimePupa_2135 = linspace(1, max(DelayPupa_2135), max(DelayPupa_2135));

hist(DelayPupa_2135, TimePupa_2135, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Pupa 21 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Pupa 26

subplot(3,1,2);

TimePupa_2635 = linspace(1, max(DelayPupa_2635), max(DelayPupa_2635));

hist(DelayPupa_2635, TimePupa_2635, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Pupa 26 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Pupa 29

subplot(3,1,3);

TimePupa_2935 = linspace(1, max(DelayPupa_2935), max(DelayPupa_2935));

hist(DelayPupa_2935, TimePupa_2935, 'g', 'FaceAlpha', 0.2, ...
     BarWidth = 0.5)

title('Pupa 29 °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')






