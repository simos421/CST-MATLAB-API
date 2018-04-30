% Copyright (C) 2018  Symeon Symeonidis, Stefanos Tsantilas, Stelios Mitilineos
% simos421@gmail.com, steftsantilas@gmail.com, smitil@gmail.com
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.

function CstDefineFrequencydomainSolver(mws)



ChangeSolverType = invoke(mws,'ChangeSolverType','HF Frequency Domain');



%'@ define frequency domain solver parameters
Mesh = invoke(mws,'Mesh');
invoke(Mesh,'SetCreator','High Frequency');
FDSolver = invoke(mws,'FDSolver');
invoke(FDSolver,'Reset');
invoke(FDSolver,'SetMethod','Hexahedral','General purpose');
invoke(FDSolver,'OrderTet','Second');
invoke(FDSolver,'OrderSrf','First');
invoke(FDSolver,'Stimulation','All','1');
invoke(FDSolver,'ResetExcitationList');
invoke(FDSolver,'AutoNormImpedance','False');
invoke(FDSolver,'NormingImpedance','50');
invoke(FDSolver,'ModesOnly','False');
invoke(FDSolver,'ConsiderPortLossesTet','True');
invoke(FDSolver,'SetShieldAllPorts','False');
invoke(FDSolver,'AccuracyHex','1e-6');
invoke(FDSolver,'AccuracyTet','1e-4');
invoke(FDSolver,'AccuracySrf','1e-3');



invoke(FDSolver,'LimitIterations','False');
invoke(FDSolver,'MaxIterations','0');
invoke(FDSolver,'SetCalculateExcitationsInParallel','True','False','');
invoke(FDSolver,'StoreAllResults','False');
invoke(FDSolver,'StoreResultsInCache','False');
invoke(FDSolver,'UseHelmholtzEquation','True');
invoke(FDSolver,'LowFrequencyStabilization','True');
invoke(FDSolver,'Type','Auto');
invoke(FDSolver,'MeshAdaptionHex','False');
invoke(FDSolver,'MeshAdaptionTet','True');
invoke(FDSolver,'AcceleratedRestart','True');
invoke(FDSolver,'FreqDistAdaptMode','Distributed');
invoke(FDSolver,'NewIterativeSolver','True');
invoke(FDSolver,'TDCompatibleMaterials','False');
invoke(FDSolver,'ExtrudeOpenBC','False');
invoke(FDSolver,'SetOpenBCTypeHex','Default');
invoke(FDSolver,'SetOpenBCTypeTet','Default');
invoke(FDSolver,'AddMonitorSamples','True');
invoke(FDSolver,'CalcStatBField','False');
invoke(FDSolver,'CalcPowerLoss','True');
invoke(FDSolver,'CalcPowerLossPerComponent','False');
invoke(FDSolver,'StoreSolutionCoefficients','True');
invoke(FDSolver,'UseDoublePrecision','False');
invoke(FDSolver,'UseDoublePrecision_ML','True');
invoke(FDSolver,'MixedOrderSrf','False');
invoke(FDSolver,'MixedOrderTet','False');
invoke(FDSolver,'PreconditionerAccuracyIntEq','0.15');
invoke(FDSolver,'MLFMMAccuracy','Default');
invoke(FDSolver,'MinMLFMMBoxSize','0.20');
invoke(FDSolver,'UseCFIEForCPECIntEq','true');


invoke(FDSolver,'UseFastRCSSweepIntEq','false');   
invoke(FDSolver,'UseSensitivityAnalysis','False');
invoke(FDSolver,'SweepErrorThreshold','True','0.01');
invoke(FDSolver,'SweepErrorChecks','2');
invoke(FDSolver,'SweepMinimumSamples','3');
invoke(FDSolver,'SweepConsiderAll','True');
invoke(FDSolver,'SweepConsiderReset');
invoke(FDSolver,'SetNumberOfResultDataSamples','1001');
invoke(FDSolver,'SweepWeightEvanescent','1.0');
invoke(FDSolver,'AccuracyROM','1e-4');
invoke(FDSolver,'AddSampleInterval','','','1','Automatic','True');
%invoke(FDSolver,'AddSampleInterval','','','','Automatic','False');
invoke(FDSolver,'MPIParallelization','False');
invoke(FDSolver,'UseDistributedComputing','False');
invoke(FDSolver,'NetworkComputingStrategy','RunRemote');
invoke(FDSolver,'NetworkComputingJobCount','3');
invoke(FDSolver,'LimitCPUs','True');
invoke(FDSolver,'MaxCPUs','48');
     
IESolver = invoke(mws,'IESolver');
invoke(IESolver,'Reset');    
invoke(IESolver,'UseFastFrequencySweep','True'); 
invoke(IESolver,'UseIEGroundPlane','False'); 
% invoke(IESolver,'SetRealGroundMaterialName',''); 
invoke(IESolver,'PreconditionerType','Auto'); 

IESolver = invoke(mws,'IESolver');
invoke(IESolver,'SetFMMFFCalcStopLevel','0');
invoke(IESolver,'SetFMMFFCalcNumInterpPoints','6');
invoke(IESolver,'UseFMMFarfieldCalc','True');
invoke(IESolver,'SetCFIEAlpha','0.500000');
invoke(IESolver,'LowFrequencyStabilization','False');
invoke(IESolver,'LowFrequencyStabilizationML','True');
invoke(IESolver,'Multilayer','False');
invoke(IESolver,'SetiMoMACC_I','0.0001');

invoke(IESolver,'SetiMoMACC_M','0.0001');
invoke(IESolver,'DeembedExternalPorts','True');
invoke(IESolver,'SetOpenBC_XY','True');
invoke(IESolver,'OldRCSSweepDefintion','False');
invoke(IESolver,'SetAccuracySetting','Custom');
invoke(IESolver,'CalculateSParaforFieldsources','True');
Solver = invoke(mws,'Solver');
invoke(Solver,'Start');
      



end
