
% Script for LifeTables analysis - Idaea Inquinata
% Created by Luca Rossini on 10 December 2023
% Last update 15 December 2023
% e-mail luca.rossini@unitus.it

% Note: for the statistical analysis of the data, refer to the R script.
%       This script concerns ONLY the development rates and the descriptive
%       statistics of the data.

clc
close all
clear

% Start to calculate the simulation time

tic


        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %                           %
        %   Data analysis 70% RH    %
        %                           %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Acquisition of the data: File 'IdaeaLifeTab.xlsx'

        % 15 °C

    % Egg

DelayEggs_1570 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'A3:A103');

DevRateEggs_1570 = 1. / DelayEggs_1570;


        % 17 °C

    % Egg

DelayEggs_1770 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'F3:F249');

DevRateEggs_1770 = 1. / DelayEggs_1770;


        % 18 °C

    % Egg

DelayEggs_1870 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'K3:K39');

DevRateEggs_1870 = 1. / DelayEggs_1870;

    % Larva

DelayLarva_1870 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'L3:L17');

DevRateLarva_1870 = 1. / DelayLarva_1870;


        % 21 °C

    % Egg

DelayEggs_2170 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'P3:P344');

DevRateEggs_2170 = 1. / DelayEggs_2170;

    % Larva

DelayLarva_2170 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'Q3:Q14');

DevRateLarva_2170 = 1. / DelayLarva_2170;

    % Pupa

DelayPupa_2170 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'R3:R11');

DevRatePupa_2170 = 1. / DelayPupa_2170;


        % 24 °C

    % Egg

DelayEggs_2470 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'U3:U56');

DevRateEggs_2470 = 1. / DelayEggs_2470;

    % Larva

DelayLarva_2470 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'V3:V34');

DevRateLarva_2470 = 1. / DelayLarva_2470;

    % Pupa

DelayPupa_2470 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'W3:W33');

DevRatePupa_2470 = 1. / DelayPupa_2470;


        % 26 °C

    % Egg

DelayEggs_2670 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'Z3:Z366');

DevRateEggs_2670 = 1. / DelayEggs_2670;

    % Larva

DelayLarva_2670 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'AA3:AA125');

DevRateLarva_2670 = 1. / DelayLarva_2670;

    % Pupa

DelayPupa_2670 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'AB3:AB125');

DevRatePupa_2670 = 1. / DelayPupa_2670;


        % 29 °C

    % Egg

DelayEggs_2970 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'AE3:AE368');

DevRateEggs_2970 = 1. / DelayEggs_2970;

    % Larva

DelayLarva_2970 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'AF3:AF52');

DevRateLarva_2970 = 1. / DelayLarva_2970;

    % Pupa

DelayPupa_2970 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'AG3:AG52');

DevRatePupa_2970 = 1. / DelayPupa_2970;


        % 32 °C

    % Egg

DelayEggs_3270 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'AJ3:AJ85');

DevRateEggs_3270 = 1. / DelayEggs_3270;

    % Larva

DelayLarva_3270 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'AK3:AK53');

DevRateLarva_3270 = 1. / DelayLarva_3270;

    % Pupa

DelayPupa_3270 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'AL3:AL43');

DevRatePupa_3270 = 1. / DelayPupa_3270;


        % 34 °C

    % Egg

DelayEggs_3470 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'AO3:AO332');

DevRateEggs_3470 = 1. / DelayEggs_3470;

    % Larva

DelayLarva_3470 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'AP3:AP6');

DevRateLarva_3470 = 1. / DelayLarva_3470;

    % Pupa

DelayPupa_3470 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                          'AQ3:AQ6');

DevRatePupa_3470 = 1. / DelayPupa_3470;


        % 36 °C

    % Egg

DelayEggs_3670 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_70RH', ...
                         'AT3:AT64');

DevRateEggs_3670 = 1. / DelayEggs_3670;


        % Whole dataset - For fitting purposes

    % Egg

Temp70RH_Egg = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_70RH', ...
                       'H3:H1988');

DevTime70RH_Egg = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_70RH', ...
                          'I3:I1988');

DevRate70RH_Egg = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_70RH', ...
                          'J3:J1988');


    % Larva

Temp70RH_Larva = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_70RH', ...
                         'L3:L290');

DevTime70RH_Larva = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_70RH', ...
                            'M3:M290');

DevRate70RH_Larva = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_70RH', ...
                            'N3:N290');


    % Pupa

Temp70RH_Pupa = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_70RH', ...
                        'P3:P260');

DevTime70RH_Pupa = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_70RH', ...
                           'Q3:Q260');

DevRate70RH_Pupa = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_70RH', ...
                           'R3:R260');


    %% Descriptive statistics: synthetic values for life tables

    % Egg

% 15 °C

ElabData_MeanEggs_1570 = mean(DelayEggs_1570);
ElabData_StDevEggs_1570 = std(DelayEggs_1570);

ElabData_MedianEggs_1570 = median(DelayEggs_1570);
ElabData_ModeEggs_1570 = mode(DelayEggs_1570);
ElabData_SkewnessEggs_1570 = skewness(DelayEggs_1570);
ElabData_KurtosisEggs_1570 = kurtosis(DelayEggs_1570);


% 17 °C

ElabData_MeanEggs_1770 = mean(DelayEggs_1770);
ElabData_StDevEggs_1770 = std(DelayEggs_1770);

ElabData_MedianEggs_1770 = median(DelayEggs_1770);
ElabData_ModeEggs_1770 = mode(DelayEggs_1770);
ElabData_SkewnessEggs_1770 = skewness(DelayEggs_1770);
ElabData_KurtosisEggs_1770 = kurtosis(DelayEggs_1770);


% 18 °C

ElabData_MeanEggs_1870 = mean(DelayEggs_1870);
ElabData_StDevEggs_1870 = std(DelayEggs_1870);

ElabData_MedianEggs_1870 = median(DelayEggs_1870);
ElabData_ModeEggs_1870 = mode(DelayEggs_1870);
ElabData_SkewnessEggs_1870 = skewness(DelayEggs_1870);
ElabData_KurtosisEggs_1870 = kurtosis(DelayEggs_1870);


% 21 °C

ElabData_MeanEggs_2170 = mean(DelayEggs_2170);
ElabData_StDevEggs_2170 = std(DelayEggs_2170);

ElabData_MedianEggs_2170 = median(DelayEggs_2170);
ElabData_ModeEggs_2170 = mode(DelayEggs_2170);
ElabData_SkewnessEggs_2170 = skewness(DelayEggs_2170);
ElabData_KurtosisEggs_2170 = kurtosis(DelayEggs_2170);


% 24 °C

ElabData_MeanEggs_2470 = mean(DelayEggs_2470);
ElabData_StDevEggs_2470 = std(DelayEggs_2470);

ElabData_MedianEggs_2470 = median(DelayEggs_2470);
ElabData_ModeEggs_2470 = mode(DelayEggs_2470);
ElabData_SkewnessEggs_2470 = skewness(DelayEggs_2470);
ElabData_KurtosisEggs_2470 = kurtosis(DelayEggs_2470);


% 26 °C

ElabData_MeanEggs_2670 = mean(DelayEggs_2670);
ElabData_StDevEggs_2670 = std(DelayEggs_2670);

ElabData_MedianEggs_2670 = median(DelayEggs_2670);
ElabData_ModeEggs_2670 = mode(DelayEggs_2670);
ElabData_SkewnessEggs_2670 = skewness(DelayEggs_2670);
ElabData_KurtosisEggs_2670 = kurtosis(DelayEggs_2670);


% 29 °C

ElabData_MeanEggs_2970 = mean(DelayEggs_2970);
ElabData_StDevEggs_2970 = std(DelayEggs_2970);

ElabData_MedianEggs_2970 = median(DelayEggs_2970);
ElabData_ModeEggs_2970 = mode(DelayEggs_2970);
ElabData_SkewnessEggs_2970 = skewness(DelayEggs_2970);
ElabData_KurtosisEggs_2970 = kurtosis(DelayEggs_2970);


% 32 °C

ElabData_MeanEggs_3270 = mean(DelayEggs_3270);
ElabData_StDevEggs_3270 = std(DelayEggs_3270);

ElabData_MedianEggs_3270 = median(DelayEggs_3270);
ElabData_ModeEggs_3270 = mode(DelayEggs_3270);
ElabData_SkewnessEggs_3270 = skewness(DelayEggs_3270);
ElabData_KurtosisEggs_3270 = kurtosis(DelayEggs_3270);


% 34 °C

ElabData_MeanEggs_3470 = mean(DelayEggs_3470);
ElabData_StDevEggs_3470 = std(DelayEggs_3470);

ElabData_MedianEggs_3470 = median(DelayEggs_3470);
ElabData_ModeEggs_3470 = mode(DelayEggs_3470);
ElabData_SkewnessEggs_3470 = skewness(DelayEggs_3470);
ElabData_KurtosisEggs_3470 = kurtosis(DelayEggs_3470);


% 36 °C

ElabData_MeanEggs_3670 = mean(DelayEggs_3670);
ElabData_StDevEggs_3670 = std(DelayEggs_3670);

ElabData_MedianEggs_3670 = median(DelayEggs_3670);
ElabData_ModeEggs_3670 = mode(DelayEggs_3670);
ElabData_SkewnessEggs_3670 = skewness(DelayEggs_3670);
ElabData_KurtosisEggs_3670 = kurtosis(DelayEggs_3670);


    % Larva

% 18 °C

ElabData_MeanLarva_1870 = mean(DelayLarva_1870);
ElabData_StDevLarva_1870 = std(DelayLarva_1870);

ElabData_MedianLarva_1870 = median(DelayLarva_1870);
ElabData_ModeLarva_1870 = mode(DelayLarva_1870);
ElabData_SkewnessLarva_1870 = skewness(DelayLarva_1870);
ElabData_KurtosisLarva_1870 = kurtosis(DelayLarva_1870);


% 21 °C

ElabData_MeanLarva_2170 = mean(DelayLarva_2170);
ElabData_StDevLarva_2170 = std(DelayLarva_2170);

ElabData_MedianLarva_2170 = median(DelayLarva_2170);
ElabData_ModeLarva_2170 = mode(DelayLarva_2170);
ElabData_SkewnessLarva_2170 = skewness(DelayLarva_2170);
ElabData_KurtosisLarva_2170 = kurtosis(DelayLarva_2170);


% 24 °C

ElabData_MeanLarva_2470 = mean(DelayLarva_2470);
ElabData_StDevLarva_2470 = std(DelayLarva_2470);

ElabData_MedianLarva_2470 = median(DelayLarva_2470);
ElabData_ModeLarva_2470 = mode(DelayLarva_2470);
ElabData_SkewnessLarva_2470 = skewness(DelayLarva_2470);
ElabData_KurtosisLarva_2470 = kurtosis(DelayLarva_2470);


% 26 °C

ElabData_MeanLarva_2670 = mean(DelayLarva_2670);
ElabData_StDevLarva_2670 = std(DelayLarva_2670);

ElabData_MedianLarva_2670 = median(DelayLarva_2670);
ElabData_ModeLarva_2670 = mode(DelayLarva_2670);
ElabData_SkewnessLarva_2670 = skewness(DelayLarva_2670);
ElabData_KurtosisLarva_2670 = kurtosis(DelayLarva_2670);


% 29 °C

ElabData_MeanLarva_2970 = mean(DelayLarva_2970);
ElabData_StDevLarva_2970 = std(DelayLarva_2970);

ElabData_MedianLarva_2970 = median(DelayLarva_2970);
ElabData_ModeLarva_2970 = mode(DelayLarva_2970);
ElabData_SkewnessLarva_2970 = skewness(DelayLarva_2970);
ElabData_KurtosisLarva_2970 = kurtosis(DelayLarva_2970);


% 32 °C

ElabData_MeanLarva_3270 = mean(DelayLarva_3270);
ElabData_StDevLarva_3270 = std(DelayLarva_3270);

ElabData_MedianLarva_3270 = median(DelayLarva_3270);
ElabData_ModeLarva_3270 = mode(DelayLarva_3270);
ElabData_SkewnessLarva_3270 = skewness(DelayLarva_3270);
ElabData_KurtosisLarva_3270 = kurtosis(DelayLarva_3270);


% 34 °C

ElabData_MeanLarva_3470 = mean(DelayLarva_3470);
ElabData_StDevLarva_3470 = std(DelayLarva_3470);

ElabData_MedianLarva_3470 = median(DelayLarva_3470);
ElabData_ModeLarva_3470 = mode(DelayLarva_3470);
ElabData_SkewnessLarva_3470 = skewness(DelayLarva_3470);
ElabData_KurtosisLarva_3470 = kurtosis(DelayLarva_3470);


    % Pupa

% 21 °C

ElabData_MeanPupa_2170 = mean(DelayPupa_2170);
ElabData_StDevPupa_2170 = std(DelayPupa_2170);

ElabData_MedianPupa_2170 = median(DelayPupa_2170);
ElabData_ModePupa_2170 = mode(DelayPupa_2170);
ElabData_SkewnessPupa_2170 = skewness(DelayPupa_2170);
ElabData_KurtosisPupa_2170 = kurtosis(DelayPupa_2170);


% 24 °C

ElabData_MeanPupa_2470 = mean(DelayPupa_2470);
ElabData_StDevPupa_2470 = std(DelayPupa_2470);

ElabData_MedianPupa_2470 = median(DelayPupa_2470);
ElabData_ModePupa_2470 = mode(DelayPupa_2470);
ElabData_SkewnessPupa_2470 = skewness(DelayPupa_2470);
ElabData_KurtosisPupa_2470 = kurtosis(DelayPupa_2470);


% 26 °C

ElabData_MeanPupa_2670 = mean(DelayPupa_2670);
ElabData_StDevPupa_2670 = std(DelayPupa_2670);

ElabData_MedianPupa_2670 = median(DelayPupa_2670);
ElabData_ModePupa_2670 = mode(DelayPupa_2670);
ElabData_SkewnessPupa_2670 = skewness(DelayPupa_2670);
ElabData_KurtosisPupa_2670 = kurtosis(DelayPupa_2670);


% 29 °C

ElabData_MeanPupa_2970 = mean(DelayPupa_2970);
ElabData_StDevPupa_2970 = std(DelayPupa_2970);

ElabData_MedianPupa_2970 = median(DelayPupa_2970);
ElabData_ModePupa_2970 = mode(DelayPupa_2970);
ElabData_SkewnessPupa_2970 = skewness(DelayPupa_2970);
ElabData_KurtosisPupa_2970 = kurtosis(DelayPupa_2970);


% 32 °C

ElabData_MeanPupa_3270 = mean(DelayPupa_3270);
ElabData_StDevPupa_3270 = std(DelayPupa_3270);

ElabData_MedianPupa_3270 = median(DelayPupa_3270);
ElabData_ModePupa_3270 = mode(DelayPupa_3270);
ElabData_SkewnessPupa_3270 = skewness(DelayPupa_3270);
ElabData_KurtosisPupa_3270 = kurtosis(DelayPupa_3270);


% 34 °C

ElabData_MeanPupa_3470 = mean(DelayPupa_3470);
ElabData_StDevPupa_3470 = std(DelayPupa_3470);

ElabData_MedianPupa_3470 = median(DelayPupa_3470);
ElabData_ModePupa_3470 = mode(DelayPupa_3470);
ElabData_SkewnessPupa_3470 = skewness(DelayPupa_3470);
ElabData_KurtosisPupa_3470 = kurtosis(DelayPupa_3470);


%% Fit EGGS

Stage_E70 = 'Egg 70RH';

% Briere : it calls the specific Briere fitting function

InitCond_BriEggs_70RH = [1e-05 5.0 35.0 1.5];
LowBound_BriEggs_70RH = [1e-07 4.0 33.0 1.0];
UpBound_BriEggs_70RH = [0.01 10.0 40.0 4.0];

BriRes_Egg_70RH = Functions.BriFit(Temp70RH_Egg, DevRate70RH_Egg, ...
                  InitCond_BriEggs_70RH, LowBound_BriEggs_70RH, ...
                  UpBound_BriEggs_70RH, Stage_E70);


% Logan : it calls the specific Logan fitting function

InitCond_LogEggs_70RH = [1e-05 0.01 35.0 1.5];
LowBound_LogEggs_70RH = [1e-07 1e-04 33.0 1.0];
UpBound_LogEggs_70RH = [0.01 1.0 40.0 5.0];

LogRes_Egg_70RH = Functions.LogFit(Temp70RH_Egg, DevRate70RH_Egg, ...
                  InitCond_LogEggs_70RH, LowBound_LogEggs_70RH, ...
                  UpBound_LogEggs_70RH, Stage_E70);


% Lactin One : it calls the specific Lactin-1 fitting function

InitCond_LacOneEggs_70RH = [0.01 35.0 4.0];
LowBound_LacOneEggs_70RH = [1e-04 -Inf -Inf];
UpBound_LacOneEggs_70RH = [Inf Inf Inf];

LacOneRes_Egg_70RH = Functions.LacOneFit(Temp70RH_Egg, DevRate70RH_Egg, ...
                     InitCond_LacOneEggs_70RH, LowBound_LacOneEggs_70RH, ...
                     UpBound_LacOneEggs_70RH, Stage_E70);


% Lactin Two : it calls the specific Lactin-2 fitting function

InitCond_LacTwoEggs_70RH = [0.001 33 2 3];
LowBound_LacTwoEggs_70RH = [-Inf -Inf -Inf -Inf];
UpBound_LacTwoEggs_70RH = [Inf Inf Inf Inf];

LacTwoRes_Egg_70RH = Functions.LacTwoFit(Temp70RH_Egg, DevRate70RH_Egg, ...
                          InitCond_LacTwoEggs_70RH, LowBound_LacTwoEggs_70RH, ...
                          UpBound_LacTwoEggs_70RH, Stage_E70);


% Shape and De Michele : it calls the specific SDM fitting function

InitCond_SDMEggs_70RH = [-1.0 -1.0 -1.0 10.0 1.0 1.0];
LowBound_SDMEggs_70RH = [-Inf -Inf -Inf -Inf -Inf -Inf];
UpBound_SDMEggs_70RH = [Inf Inf Inf Inf Inf Inf];

SDMRes_Egg_70RH = Functions.SDMFit(Temp70RH_Egg, DevRate70RH_Egg, ...
                          InitCond_SDMEggs_70RH, LowBound_SDMEggs_70RH, ...
                          UpBound_SDMEggs_70RH, Stage_E70);


%% Fit Larva

Stage_L70 = 'Larva 70RH';

% Briere : it calls the specific Briere fitting function

InitCond_BriLarva_70RH = [1.0e-05 5.0 37.0 2.0];
LowBound_BriLarva_70RH = [10e-7 3.0 31.0 1.5];
UpBound_BriLarva_70RH = [0.01 12.0 37.0 5.0];

BriRes_Larva_70RH = Functions.BriFit(Temp70RH_Larva, DevRate70RH_Larva, ...
                     InitCond_BriLarva_70RH, LowBound_BriLarva_70RH, ...
                     UpBound_BriLarva_70RH, Stage_L70);


% Logan : it calls the specific Logan fitting function

InitCond_LogLarva_70RH = [1.0e-05 0.001 34.5 4.0];
LowBound_LogLarva_70RH = [0 1.0e-04 34.0 3.0];
UpBound_LogLarva_70RH = [Inf 0.5 36.0 5.0];

LogRes_Larva_70RH = Functions.LogFit(Temp70RH_Larva, DevRate70RH_Larva, ...
                    InitCond_LogLarva_70RH, LowBound_LogLarva_70RH, ...
                    UpBound_LogLarva_70RH, Stage_L70);


% Lactin One : it calls the specific Lactin-1 fitting function

InitCond_LacOneLarva_70RH = [0.01 34.0 2.0];
LowBound_LacOneLarva_70RH = [1.0e-04 33.0 -Inf];
UpBound_LacOneLarva_70RH = [0.9 38.0 Inf];

LacOneRes_Larva_70RH = Functions.LacOneFit(Temp70RH_Larva, DevRate70RH_Larva, ...
                       InitCond_LacOneLarva_70RH, LowBound_LacOneLarva_70RH, ...
                       UpBound_LacOneLarva_70RH, Stage_L70);


% Lactin Two : it calls the specific Lactin-2 fitting function

InitCond_LacTwoLarva_70RH = [0.01 34.0 2.0 12.0];
LowBound_LacTwoLarva_70RH = [1.0e-04 33.0 -Inf -1.0];
UpBound_LacTwoLarva_70RH = [0.9 38.0 Inf Inf];

LacTwoRes_Larva_70RH = Functions.LacTwoFit(Temp70RH_Larva, DevRate70RH_Larva, ...
                       InitCond_LacTwoLarva_70RH, LowBound_LacTwoLarva_70RH, ...
                       UpBound_LacTwoLarva_70RH, Stage_L70);


% Shape and De Michele : it calls the specific SDM fitting function

InitCond_SDMLarva_70RH = [-1.0 2.0 -1.0 10.0 -1.0 1.0];
LowBound_SDMLarva_70RH = [-Inf -Inf -Inf -Inf -Inf -Inf];
UpBound_SDMLarva_70RH = [Inf Inf Inf Inf Inf 0];

SDMRes_Larva_70RH = Functions.SDMFit(Temp70RH_Larva, DevRate70RH_Larva, ...
                        InitCond_SDMLarva_70RH, LowBound_SDMLarva_70RH, ...
                        UpBound_SDMLarva_70RH, Stage_L70);





%% Fit Pupa

Stage_P70 = 'Pupa 70RH';

% Briere : it calls the specific Briere fitting function

InitCond_BriPupa_70RH = [1.0e-05 2.0 34.1 2.0];
LowBound_BriPupa_70RH = [1.0e-7 0 33.0 2.0];
UpBound_BriPupa_70RH = [0.01 10.0 35.0 4.0];

BriRes_Pupa_70RH = Functions.BriFit(Temp70RH_Pupa, DevRate70RH_Pupa, ...
                       InitCond_BriPupa_70RH, LowBound_BriPupa_70RH, ...
                       UpBound_BriPupa_70RH, Stage_P70);


% Logan : it calls the specific Logan fitting function

InitCond_LogPupa_70RH = [1.0e-05 2.0 34.1 2.0];
LowBound_LogPupa_70RH = [1.0e-7 0 33.0 2.0];
UpBound_LogPupa_70RH = [0.01 10.0 35.0 4.0];

LogRes_Pupa_70RH = Functions.LogFit(Temp70RH_Pupa, DevRate70RH_Pupa, ...
                        InitCond_LogPupa_70RH, LowBound_LogPupa_70RH, ...
                        UpBound_LogPupa_70RH, Stage_P70);


% Lactin One : it calls the specific Lactin-1 fitting function

InitCond_LacOnePupa_70RH = [0.01 34.0 2.0];
LowBound_LacOnePupa_70RH = [1.0e-05 31.0 1.5];
UpBound_LacOnePupa_70RH = [0.9 37.0 35.0];

LacOneRes_Pupa_70RH = Functions.LacOneFit(Temp70RH_Pupa, DevRate70RH_Pupa, ...
                       InitCond_LacOnePupa_70RH, LowBound_LacOnePupa_70RH, ...
                       UpBound_LacOnePupa_70RH, Stage_P70);


% Lactin Two : it calls the specific Lactin-2 fitting function

InitCond_LacTwoPupa_70RH = [0.01 34.0 1.5 -2.0];
LowBound_LacTwoPupa_70RH = [1.0e-05 31.0 1.001 -3.0];
UpBound_LacTwoPupa_70RH = [0.9 37.0 2.0 4.0];

LacTwoRes_Pupa_70RH = Functions.LacTwoFit(Temp70RH_Pupa, DevRate70RH_Pupa, ...
                        InitCond_LacTwoPupa_70RH, LowBound_LacTwoPupa_70RH, ...
                        UpBound_LacTwoPupa_70RH, Stage_P70);


% Shape and De Michele : it calls the specific SDM fitting function

InitCond_SDMPupa_70RH = [];
LowBound_SDMPupa_70RH = [];
UpBound_SDMPupa_70RH = [];

SDMRes_Pupa_70RH = Functions.SDMFit(Temp70RH_Pupa, DevRate70RH_Pupa, ...
                         InitCond_SDMPupa_70RH, LowBound_SDMPupa_70RH, ...
                         UpBound_SDMPupa_70RH, Stage_P70);


%%            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
              %                           %
              %   Data analysis 35% RH    %
              %                           %
              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Acquisition of the data: File 'IdaeaLifeTab.xlsx'

        % 15 °C

    % Egg

DelayEggs_1535 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                         'A3:A30');

DevRateEggs_1535 = 1. / DelayEggs_1535;


        % 17 °C

    % Egg

DelayEggs_1735 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                         'F3:F264');

DevRateEggs_1735 = 1. / DelayEggs_1735;


        % 21 °C

    % Egg

DelayEggs_2135 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                         'K3:K375');

DevRateEggs_2135 = 1. / DelayEggs_2135;

    % Larva

DelayLarva_2135 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                          'L3:L7');

DevRateLarva_2135 = 1. / DelayLarva_2135;

    % Pupa

DelayPupa_2135 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                          'M3:M6');

DevRatePupa_2135 = 1. / DelayPupa_2135;


        % 26 °C

    % Egg

DelayEggs_2635 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                         'P3:P317');

DevRateEggs_2635 = 1. / DelayEggs_2635;

    % Larva

DelayLarva_2635 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                          'Q3:Q52');

DevRateLarva_2635 = 1. / DelayLarva_2635;

    % Pupa

DelayPupa_2635 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                          'R3:R52');

DevRatePupa_2635 = 1. / DelayPupa_2635;


        % 29 °C

    % Egg

DelayEggs_2935 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                         'U3:U312');

DevRateEggs_2935 = 1. / DelayEggs_2935;

    % Larva

DelayLarva_2935 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                          'V3:V20');

DevRateLarva_2935 = 1. / DelayLarva_2935;

    % Pupa

DelayPupa_2935 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                          'W3:W20');

DevRatePupa_2935 = 1. / DelayPupa_2935;


        % 34 °C

    % Egg

DelayEggs_3435 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                         'Z3:Z321');

DevRateEggs_3435 = 1. / DelayEggs_3435;

    % Larva

DelayLarva_3435 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                          'AA3:AA9');

DevRateLarva_3435 = 1. / DelayLarva_3435;


        % 36 °C

    % Egg

DelayEggs_3635 = xlsread('IdaeaLifeTab.xlsx', 'Split_Database_35RH', ...
                         'AE3:AE12');

DevRateEggs_3635 = 1. / DelayEggs_3635;


        % Whole dataset - For fitting purposes

    % Egg

Temp35RH_Egg = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_35RH', ...
                       'H3:H1645');

DevTime35RH_Egg = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_35RH', ...
                          'I3:I1645');

DevRate35RH_Egg = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_35RH', ...
                          'J3:J1645');


    % Larva

Temp35RH_Larva = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_35RH', ...
                         'L3:L82');

DevTime35RH_Larva = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_35RH', ...
                            'M3:M82');

DevRate35RH_Larva = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_35RH', ...
                            'N3:N82');


    % Pupa

Temp35RH_Pupa = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_35RH', ...
                        'P3:P74');

DevTime35RH_Pupa = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_35RH', ...
                           'Q3:Q74');

DevRate35RH_Pupa = xlsread('IdaeaLifeTab.xlsx', 'DevTimesComplete_35RH', ...
                           'R3:R74');


    %% Descriptive statistics: synthetic values for life tables

    % Egg

% 15 °C

ElabData_MeanEggs_1535 = mean(DelayEggs_1535);
ElabData_StDevEggs_1535 = std(DelayEggs_1535);

ElabData_MedianEggs_1535 = median(DelayEggs_1535);
ElabData_ModeEggs_1535 = mode(DelayEggs_1535);
ElabData_SkewnessEggs_1535 = skewness(DelayEggs_1535);
ElabData_KurtosisEggs_1535 = kurtosis(DelayEggs_1535);


% 17 °C

ElabData_MeanEggs_1735 = mean(DelayEggs_1735);
ElabData_StDevEggs_1735 = std(DelayEggs_1735);

ElabData_MedianEggs_1735 = median(DelayEggs_1735);
ElabData_ModeEggs_1735 = mode(DelayEggs_1735);
ElabData_SkewnessEggs_1735 = skewness(DelayEggs_1735);
ElabData_KurtosisEggs_1735 = kurtosis(DelayEggs_1735);


% 21 °C

ElabData_MeanEggs_2135 = mean(DelayEggs_2135);
ElabData_StDevEggs_2135 = std(DelayEggs_2135);

ElabData_MedianEggs_2135 = median(DelayEggs_2135);
ElabData_ModeEggs_2135 = mode(DelayEggs_2135);
ElabData_SkewnessEggs_2135 = skewness(DelayEggs_2135);
ElabData_KurtosisEggs_2135 = kurtosis(DelayEggs_2135);


% 26 °C

ElabData_MeanEggs_2635 = mean(DelayEggs_2635);
ElabData_StDevEggs_2635 = std(DelayEggs_2635);

ElabData_MedianEggs_2635 = median(DelayEggs_2635);
ElabData_ModeEggs_2635 = mode(DelayEggs_2635);
ElabData_SkewnessEggs_2635 = skewness(DelayEggs_2635);
ElabData_KurtosisEggs_2635 = kurtosis(DelayEggs_2635);


% 29 °C

ElabData_MeanEggs_2935 = mean(DelayEggs_2935);
ElabData_StDevEggs_2935 = std(DelayEggs_2935);

ElabData_MedianEggs_2935 = median(DelayEggs_2935);
ElabData_ModeEggs_2935 = mode(DelayEggs_2935);
ElabData_SkewnessEggs_2935 = skewness(DelayEggs_2935);
ElabData_KurtosisEggs_2935 = kurtosis(DelayEggs_2935);


% 34 °C

ElabData_MeanEggs_3435 = mean(DelayEggs_3435);
ElabData_StDevEggs_3435 = std(DelayEggs_3435);

ElabData_MedianEggs_3435 = median(DelayEggs_3435);
ElabData_ModeEggs_3435 = mode(DelayEggs_3435);
ElabData_SkewnessEggs_3435 = skewness(DelayEggs_3435);
ElabData_KurtosisEggs_3435 = kurtosis(DelayEggs_3435);


% 36 °C

ElabData_MeanEggs_3635 = mean(DelayEggs_3635);
ElabData_StDevEggs_3635 = std(DelayEggs_3635);

ElabData_MedianEggs_3635 = median(DelayEggs_3635);
ElabData_ModeEggs_3635 = mode(DelayEggs_3635);
ElabData_SkewnessEggs_3635 = skewness(DelayEggs_3635);
ElabData_KurtosisEggs_3635 = kurtosis(DelayEggs_3635);


    % Larva

% 21 °C

ElabData_MeanLarva_2135 = mean(DelayLarva_2135);
ElabData_StDevLarva_2135 = std(DelayLarva_2135);

ElabData_MedianLarva_2135 = median(DelayLarva_2135);
ElabData_ModeLarva_2135 = mode(DelayLarva_2135);
ElabData_SkewnessLarva_2135 = skewness(DelayLarva_2135);
ElabData_KurtosisLarva_2135 = kurtosis(DelayLarva_2135);


% 26 °C

ElabData_MeanLarva_2635 = mean(DelayLarva_2635);
ElabData_StDevLarva_2635 = std(DelayLarva_2635);

ElabData_MedianLarva_2635 = median(DelayLarva_2635);
ElabData_ModeLarva_2635 = mode(DelayLarva_2635);
ElabData_SkewnessLarva_2635 = skewness(DelayLarva_2635);
ElabData_KurtosisLarva_2635 = kurtosis(DelayLarva_2635);


% 29 °C

ElabData_MeanLarva_2935 = mean(DelayLarva_2935);
ElabData_StDevLarva_2935 = std(DelayLarva_2935);

ElabData_MedianLarva_2935 = median(DelayLarva_2935);
ElabData_ModeLarva_2935 = mode(DelayLarva_2935);
ElabData_SkewnessLarva_2935 = skewness(DelayLarva_2935);
ElabData_KurtosisLarva_2935 = kurtosis(DelayLarva_2935);


% 34 °C

ElabData_MeanLarva_3435 = mean(DelayLarva_3435);
ElabData_StDevLarva_3435 = std(DelayLarva_3435);

ElabData_MedianLarva_3435 = median(DelayLarva_3435);
ElabData_ModeLarva_3435 = mode(DelayLarva_3435);
ElabData_SkewnessLarva_3435 = skewness(DelayLarva_3435);
ElabData_KurtosisLarva_3435 = kurtosis(DelayLarva_3435);


    % Pupa

% 21 °C

ElabData_MeanPupa_2135 = mean(DelayPupa_2135);
ElabData_StDevPupa_2135 = std(DelayPupa_2135);

ElabData_MedianPupa_2135 = median(DelayPupa_2135);
ElabData_ModePupa_2135 = mode(DelayPupa_2135);
ElabData_SkewnessPupa_2135 = skewness(DelayPupa_2135);
ElabData_KurtosisPupa_2135 = kurtosis(DelayPupa_2135);


% 26 °C

ElabData_MeanPupa_2635 = mean(DelayPupa_2635);
ElabData_StDevPupa_2635 = std(DelayPupa_2635);

ElabData_MedianPupa_2635 = median(DelayPupa_2635);
ElabData_ModePupa_2635 = mode(DelayPupa_2635);
ElabData_SkewnessPupa_2635 = skewness(DelayPupa_2635);
ElabData_KurtosisPupa_2635 = kurtosis(DelayPupa_2635);


% 29 °C

ElabData_MeanPupa_2935 = mean(DelayPupa_2935);
ElabData_StDevPupa_2935 = std(DelayPupa_2935);

ElabData_MedianPupa_2935 = median(DelayPupa_2935);
ElabData_ModePupa_2935 = mode(DelayPupa_2935);
ElabData_SkewnessPupa_2935 = skewness(DelayPupa_2935);
ElabData_KurtosisPupa_2935 = kurtosis(DelayPupa_2935);


%% Fit EGGS

Stage_E35 = 'Egg 35RH';

% Briere : it calls the specific Briere fitting function

InitCond_BriEggs_35RH = [1e-05 5.0 35.0 1.5];
LowBound_BriEggs_35RH = [1e-07 4.0 33.0 1.0];
UpBound_BriEggs_35RH = [0.01 10.0 40.0 6.0];

BriRes_Egg_35RH = Functions.BriFit(Temp35RH_Egg, DevRate35RH_Egg, ...
                  InitCond_BriEggs_35RH, LowBound_BriEggs_35RH, ...
                  UpBound_BriEggs_35RH, Stage_E35);


% Logan : it calls the specific Logan fitting function

InitCond_LogEggs_35RH = [1e-05 0.01 35.0 1.5];
LowBound_LogEggs_35RH = [1e-07 1e-04 33.0 1.0];
UpBound_LogEggs_35RH = [0.01 1.0 40.0 5.0];

LogRes_Egg_35RH = Functions.LogFit(Temp35RH_Egg, DevRate35RH_Egg, ...
                  InitCond_LogEggs_35RH, LowBound_LogEggs_35RH, ...
                  UpBound_LogEggs_35RH, Stage_E35);


% Lactin One : it calls the specific Lactin-1 fitting function

InitCond_LacOneEggs_35RH = [0.01 35.0 4.0];
LowBound_LacOneEggs_35RH = [1e-04 -Inf -Inf];
UpBound_LacOneEggs_35RH = [Inf Inf Inf];

LacOneRes_Egg_35RH = Functions.LacOneFit(Temp35RH_Egg, DevRate35RH_Egg, ...
                     InitCond_LacOneEggs_35RH, LowBound_LacOneEggs_35RH, ...
                     UpBound_LacOneEggs_35RH, Stage_E35);


% Lactin Two : it calls the specific Lactin-2 fitting function

InitCond_LacTwoEggs_35RH = [0.001 33 2 3];
LowBound_LacTwoEggs_35RH = [-Inf -Inf -Inf -Inf];
UpBound_LacTwoEggs_35RH = [Inf Inf Inf Inf];

LacTwoRes_Egg_35RH = Functions.LacTwoFit(Temp35RH_Egg, DevRate35RH_Egg, ...
                          InitCond_LacTwoEggs_35RH, LowBound_LacTwoEggs_35RH, ...
                          UpBound_LacTwoEggs_35RH, Stage_E35);


% Shape and De Michele : it calls the specific SDM fitting function

InitCond_SDMEggs_35RH = [98.0 1483.0 114.0 1889.0 102.0 1454.0];
LowBound_SDMEggs_35RH = [97 1480 110 -Inf 98 -Inf];
UpBound_SDMEggs_35RH = [100 1490 118 Inf 104 Inf];

SDMRes_Egg_35RH = Functions.SDMFit(Temp35RH_Egg, DevRate35RH_Egg, ...
                          InitCond_SDMEggs_35RH, LowBound_SDMEggs_35RH, ...
                          UpBound_SDMEggs_35RH, Stage_E35);


%% Fit Larva

Stage_L35 = 'Larva 35RH';

% Briere : it calls the specific Briere fitting function

InitCond_BriLarva_35RH = [1.0e-05 8.0 34.0 2.0];
LowBound_BriLarva_35RH = [10e-7 5.0 33.0 1.5];
UpBound_BriLarva_35RH = [0.001 18.0 36.0 4.0];

BriRes_Larva_35RH = Functions.BriFit(Temp35RH_Larva, DevRate35RH_Larva, ...
                     InitCond_BriLarva_35RH, LowBound_BriLarva_35RH, ...
                     UpBound_BriLarva_35RH, Stage_L35);


% Logan : it calls the specific Logan fitting function

InitCond_LogLarva_35RH = [1.0e-04 0.01 34.0 4.0];
LowBound_LogLarva_35RH = [-Inf -Inf -Inf 1.5];
UpBound_LogLarva_35RH = [0.001 18.0 Inf 4.0];

LogRes_Larva_35RH = Functions.LogFit(Temp35RH_Larva, DevRate35RH_Larva, ...
                    InitCond_LogLarva_35RH, LowBound_LogLarva_35RH, ...
                    UpBound_LogLarva_35RH, Stage_L35);


% Lactin One : it calls the specific Lactin-1 fitting function

InitCond_LacOneLarva_35RH = [0.3 34.0 2.0];
LowBound_LacOneLarva_35RH = [0 33.0 1.5];
UpBound_LacOneLarva_35RH = [0.7 40.0 Inf];

LacOneRes_Larva_35RH = Functions.LacOneFit(Temp35RH_Larva, DevRate35RH_Larva, ...
                       InitCond_LacOneLarva_35RH, LowBound_LacOneLarva_35RH, ...
                       UpBound_LacOneLarva_35RH, Stage_L35);


% Lactin Two : it calls the specific Lactin-2 fitting function

InitCond_LacTwoLarva_35RH = [0.3 34.0 2.0 12.0];
LowBound_LacTwoLarva_35RH = [0 33.0 1.5 -Inf];
UpBound_LacTwoLarva_35RH = [0.7 40.0 Inf 4.0];

LacTwoRes_Larva_35RH = Functions.LacTwoFit(Temp35RH_Larva, DevRate35RH_Larva, ...
                       InitCond_LacTwoLarva_35RH, LowBound_LacTwoLarva_35RH, ...
                       UpBound_LacTwoLarva_35RH, Stage_L35);


% Shape and De Michele : it calls the specific SDM fitting function

InitCond_SDMLarva_35RH = [98 1480 114 1890 105 1454];
LowBound_SDMLarva_35RH = [90 -Inf 100 -Inf 100 -Inf];
UpBound_SDMLarva_35RH = [110 Inf 120 Inf 110 Inf];

SDMRes_Larva_35RH = Functions.SDMFit(Temp35RH_Larva, DevRate35RH_Larva, ...
                        InitCond_SDMLarva_35RH, LowBound_SDMLarva_35RH, ...
                        UpBound_SDMLarva_35RH, Stage_L35);


%% Making plots by calling the dedicated scripts

run("Plots_70RH.m")
run("Plots_35RH.m")

% End the calculation of the simulation time

toc