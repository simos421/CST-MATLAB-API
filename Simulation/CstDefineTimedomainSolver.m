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

function CstDefineTimedomainSolver(mws,SteadyStateLimit)

%'@ define time domain solver parameters
% SteadyStateLimit is usualy -30 or -40 db
Mesh = invoke(mws,'Mesh');
invoke(Mesh,'SetCreator','High Frequency');

Solver = invoke(mws,'Solver');
invoke(Solver,'Method','Hexahedral');
invoke(Solver,'CalculationType','TD-S');
invoke(Solver,'StimulationPort','All');
invoke(Solver,'StimulationMode','All');
invoke(Solver,'SteadyStateLimit',int2str(SteadyStateLimit));
invoke(Solver,'MeshAdaption','False');
invoke(Solver,'AutoNormImpedance','False');
invoke(Solver,'NormingImpedance','50');
invoke(Solver,'CalculateModesOnly','False');
invoke(Solver,'SParaSymmetry','False');
invoke(Solver,'StoreTDResultsInCache','False');
invoke(Solver,'FullDeembedding','False');
invoke(Solver,'SuperimposePLWExcitation','False');
invoke(Solver,'UseSensitivityAnalysis','False');
invoke(Solver,'Start'); %initializes simulation

end



