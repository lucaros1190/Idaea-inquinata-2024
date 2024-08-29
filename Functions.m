
% Definition of the functions contained in the AnalisiStepMatlab.m 
% file

% Created by Luca Rossini on 11 December 2023
% Last update 12 December 2023
% E-mail: luca.rossini@unitus.it


classdef Functions

    methods (Static) % Insert any function in between "methods" and "end".

    
    % Briere fit function

    function BriPar = BriFit(Temperature, DevRates, InitCond, LowBound, ...
                             UpBound, Stage)


        % Definition of the mathematical expression
                % a = a
                % b = T_L
                % c = T_M
                % d = m

            BriereFun = ['abs(a * x * ( x - b ) * (( c - x )^( 1 / d )))'];

        % Initial conditions

            BriInitCond = InitCond;
            BriLowBound = LowBound;
            BriUpBound = UpBound;

        % Fit options

            BriFitOpt = fitoptions('Method', 'NonlinearLeastSquares', ...
                                      'Lower', BriLowBound, 'Upper', ...
                                      BriUpBound, 'StartPoint', ...
                                      BriInitCond);

        % Fitting algorithm and solution storage

            [BriFit, Brigof] = fit(Temperature, DevRates, BriereFun, ...
                                   BriFitOpt);
    
        % Save the coeffiecient values for a, b, c, and d in a vector

            FitRes = coeffvalues(BriFit);

        % Get the confidence interval

            CI = confint(BriFit, 0.95);

        % Chi square test for the goodness of fit

            FitData = BriFit(Temperature);
            Bins = 0 : (length(DevRates) - 1);

            [h, p, st] = chi2gof(Bins, 'Ctrs', Bins, ...
                                 'Frequency', DevRates, ...
                                 'Expected', FitData);

        % Print results on the console

            fprintf('\n Briere %s - Fit Results: \n\n', Stage)
            fprintf('a = %f +/- %f\n', FitRes(1), ...
                                     abs((CI(1) - CI(2)) / 3.92))
            fprintf('T_L = %f +/- %f\n', FitRes(2), ...
                                     abs((CI(3) - CI(4)) / 3.92))
            fprintf('T_M = %f +/- %f\n', FitRes(3), ...
                                     abs((CI(5) - CI(6)) / 3.92))
            fprintf('m = %f +/- %f\n', FitRes(4), ...
                                     abs((CI(7) - CI(8)) / 3.92))

            fprintf('\n Goodness of fit:\n')
            Brigof

            fprintf('\n Chi squared test:\n')
            h
            p
            st

            fprintf('\n')

            BriPar = [FitRes(1) FitRes(2) FitRes(3) FitRes(4)];

        end


    % Logan fit function

    function LogPar = LogFit(Temperature, DevRates, InitCond, LowBound, ...
                             UpBound, Stage)


        % Definition of the mathematical expression
                % a = psi
                % b = rho
                % c = T_M
                % d = Delta_T

            LoganFun = ['a * ( exp( b * x) - exp( b * c - ' ...
                        '( ( c - x) / d ) ) )'];

        % Initial conditions

            LogInitCond = InitCond;
            LogLowBound = LowBound;
            LogUpBound = UpBound;

        % Fit options

            LogFitOpt = fitoptions('Method', 'NonlinearLeastSquares', ...
                                      'Lower', LogLowBound, 'Upper', ...
                                      LogUpBound, 'StartPoint', ...
                                      LogInitCond);

        % Fitting algorithm and solution storage

            [LogFit, Loggof] = fit(Temperature, DevRates, LoganFun, ...
                                   LogFitOpt);
    
        % Save the coeffiecient values for a, b, c, and d in a vector

            FitRes = coeffvalues(LogFit);

        % Get the confidence interval

            CI = confint(LogFit, 0.95);

        % Chi square test for the goodness of fit

            FitData = LogFit(Temperature);
            Bins = 0 : (length(DevRates) - 1);

            [h, p, st] = chi2gof(Bins, 'Ctrs', Bins, ...
                                 'Frequency', DevRates, ...
                                 'Expected', FitData);

        % Print results on the console

            fprintf('\n Logan %s - Fit Results: \n\n', Stage)
            fprintf('psi = %f +/- %f\n', FitRes(1), ...
                                     abs((CI(1) - CI(2)) / 3.92))
            fprintf('rho = %f +/- %f\n', FitRes(2), ...
                                     abs((CI(3) - CI(4)) / 3.92))
            fprintf('T_M = %f +/- %f\n', FitRes(3), ...
                                     abs((CI(5) - CI(6)) / 3.92))
            fprintf('Delta_T = %f +/- %f\n', FitRes(4), ...
                                     abs((CI(7) - CI(8)) / 3.92))

            fprintf('\n Goodness of fit:\n')
            Loggof

            fprintf('\n Chi squared test:\n')
            h
            p
            st

            fprintf('\n')

            LogPar = [FitRes(1) FitRes(2) FitRes(3) FitRes(4)];

        end


    % Lactin-1 fit function

    function LacOnePar = LacOneFit(Temperature, DevRates, InitCond, ...
                                   LowBound, UpBound, Stage)


        % Definition of the mathematical expression
                % a = rho
                % b = T_M
                % c = Delta_T

            LacOneFun = ['exp( a * x) - exp( a * b - ( ( b - x ) / c ) )'];

        % Initial conditions

            LacOneInitCond = InitCond;
            LacOneLowBound = LowBound;
            LacOneUpBound = UpBound;

        % Fit options

            LacOneFitOpt = fitoptions('Method', 'NonlinearLeastSquares', ...
                                      'Lower', LacOneLowBound, 'Upper', ...
                                      LacOneUpBound, 'StartPoint', ...
                                      LacOneInitCond);

        % Fitting algorithm and solution storage

            [LacOneFit, LacOnegof] = fit(Temperature, DevRates, LacOneFun, ...
                                         LacOneFitOpt);
    
        % Save the coeffiecient values for a, b, and c in a vector

            FitRes = coeffvalues(LacOneFit);

        % Get the confidence interval

            CI = confint(LacOneFit, 0.95);

        % Chi square test for the goodness of fit

            FitData = LacOneFit(Temperature);
            Bins = 0 : (length(DevRates) - 1);

            [h, p, st] = chi2gof(Bins, 'Ctrs', Bins, ...
                                 'Frequency', DevRates, ...
                                 'Expected', FitData);

        % Print results on the console

            fprintf('\n Lactin-1 %s - Fit Results: \n\n', Stage)
            fprintf('rho = %f +/- %f\n', FitRes(1), ...
                                     abs((CI(1) - CI(2)) / 3.92))
            fprintf('T_M = %f +/- %f\n', FitRes(2), ...
                                     abs((CI(3) - CI(4)) / 3.92))
            fprintf('Delta_t = %f +/- %f\n', FitRes(3), ...
                                     abs((CI(5) - CI(6)) / 3.92))

            fprintf('\n Goodness of fit:\n')
            LacOnegof

            fprintf('\n Chi squared test:\n')
            h
            p
            st

            fprintf('\n')

            LacOnePar = [FitRes(1) FitRes(2) FitRes(3)];

        end


    % Lactin-2 fit function

    function LacTwoPar = LacTwoFit(Temperature, DevRates, InitCond, ...
                                   LowBound, UpBound, Stage)


        % Definition of the mathematical expression
                % a = rho
                % b = T_M
                % c = Delta_T
                % d = lambda

            LacTwoFun = ['exp( a * x) - exp( a * b - ( ( b - x ) / c ) ) ' ...
                         ' + lambda'];

        % Initial conditions

            LacTwoInitCond = InitCond;
            LacTwoLowBound = LowBound;
            LacTwoUpBound = UpBound;

        % Fit options

            LacTwoFitOpt = fitoptions('Method', 'NonlinearLeastSquares', ...
                                      'Lower', LacTwoLowBound, 'Upper', ...
                                      LacTwoUpBound, 'StartPoint', ...
                                      LacTwoInitCond);

        % Fitting algorithm and solution storage

            [LacTwoFit, LacTwogof] = fit(Temperature, DevRates, LacTwoFun, ...
                                         LacTwoFitOpt);
    
        % Save the coeffiecient values for a, b, c, and d in a vector

            FitRes = coeffvalues(LacTwoFit);

        % Get the confidence interval

            CI = confint(LacTwoFit, 0.95);

        % Chi square test for the goodness of fit

            FitData = LacTwoFit(Temperature);
            Bins = 0 : (length(DevRates) - 1);

            [h, p, st] = chi2gof(Bins, 'Ctrs', Bins, ...
                                 'Frequency', DevRates, ...
                                 'Expected', FitData);

        % Print results on the console

            fprintf('\n Lactin-2 %s - Fit Results: \n\n', Stage)
            fprintf('rho = %f +/- %f\n', FitRes(1), ...
                                     abs((CI(1) - CI(2)) / 3.92))
            fprintf('T_M = %f +/- %f\n', FitRes(2), ...
                                     abs((CI(3) - CI(4)) / 3.92))
            fprintf('Delta_t = %f +/- %f\n', FitRes(3), ...
                                     abs((CI(5) - CI(6)) / 3.92))
            fprintf('lambda = %f +/- %f\n', FitRes(4), ...
                                     abs((CI(7) - CI(8)) / 3.92))

            fprintf('\n Goodness of fit:\n')
            LacTwogof

            fprintf('\n Chi squared test:\n')
            h
            p
            st

            fprintf('\n')

            LacTwoPar = [FitRes(1) FitRes(2) FitRes(3) FitRes(4)];

        end


    % Sharpe and De Michele fit function

    function SDMPar = SDMFit(Temperature, DevRates, InitCond, LowBound, ...
                             UpBound, Stage)


        % Definition of the mathematical expression

            SDMFun = ['(x * ( exp( A - (B / x ) ) ) ) / ' ...
                      '((1 + exp( C - ( D / x ) ) + exp( E - ( F / x ) ) ) )'];

        % Initial conditions

            SDMInitCond = InitCond;
            SDMLowBound = LowBound;
            SDMUpBound = UpBound;

        % Fit options

            SDMFitOpt = fitoptions('Method', 'NonlinearLeastSquares', ...
                                      'Lower', SDMLowBound, 'Upper', ...
                                      SDMUpBound, 'StartPoint', ...
                                      SDMInitCond);

        % Fitting algorithm and solution storage

            [SDMFit, SDMgof] = fit(Temperature, DevRates, SDMFun, SDMFitOpt);
    
        % Save the coeffiecient values in a vector

            FitRes = coeffvalues(SDMFit);

        % Get the confidence interval

            CI = confint(SDMFit, 0.95);

        % Chi square test for the goodness of fit

            FitData = SDMFit(Temperature);
            Bins = 0 : (length(DevRates) - 1);

            [h, p, st] = chi2gof(Bins, 'Ctrs', Bins, ...
                                 'Frequency', DevRates, ...
                                 'Expected', FitData);

        % Print results on the console

            fprintf('\n Sharpe and De Michele %s - Fit Results: \n\n', ...
                    Stage)
            fprintf('A = %f +/- %f\n', FitRes(1), ...
                                     abs((CI(1) - CI(2)) / 5.15))
            fprintf('B = %f +/- %f\n', FitRes(2), ...
                                     abs((CI(3) - CI(4)) / 5.15))
            fprintf('C = %f +/- %f\n', FitRes(3), ...
                                     abs((CI(5) - CI(6)) / 5.15))
            fprintf('D = %f +/- %f\n', FitRes(4), ...
                                     abs((CI(7) - CI(8)) / 5.15))
            fprintf('E = %f +/- %f\n', FitRes(5), ...
                                     abs((CI(9) - CI(10)) / 5.15))
            fprintf('F = %f +/- %f\n', FitRes(6), ...
                                     abs((CI(11) - CI(12)) / 5.15))

            fprintf('\n Goodness of fit:\n')
            SDMgof

            fprintf('\n Chi squared test:\n')
            h
            p
            st

            fprintf('\n')

            SDMPar = [FitRes(1) FitRes(2) FitRes(3) FitRes(4) FitRes(5) ...
                      FitRes(6)];

        end


    end

end