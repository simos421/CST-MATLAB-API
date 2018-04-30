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

function CstMeshInitiator(mws)

%' switch on FD-TET setting for accurate farfields


FDSolver = invoke(mws,'FDSolver');
invoke(FDSolver,'ExtrudeOpenBC','True');

Mesh = invoke(mws,'Mesh');
invoke(Mesh,'FPBAAvoidNonRegUnite','True');
invoke(Mesh,'ConsiderSpaceForLowerMeshLimit','False');
invoke(Mesh,'MinimumStepNumber','5');

MeshSettings = invoke(mws,'MeshSettings');
invoke(MeshSettings, 'SetMeshType','Hex');
invoke(MeshSettings, 'Set','RatioLimitGeometry','20');
MeshSettings = invoke(mws,'MeshSettings');    
invoke(MeshSettings, 'SetMeshType','HexTLM');
invoke(MeshSettings, 'Set','RatioLimitGeometry','20');
    
PostProcess1D = invoke(mws,'PostProcess1D');
invoke(PostProcess1D,'ActivateOperation','vswr','true');
invoke(PostProcess1D,'ActivateOperation','yz-matrices','true');
end