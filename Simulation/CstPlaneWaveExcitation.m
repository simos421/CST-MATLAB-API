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


function CstPlaneWaveExcitation(mws,Normal,EVector,Polarization,ReferenceFrequency,PhaseDifference,CircularDirection,AxialRatio)

PlaneWave = invoke(mws,'PlaneWave');
invoke(PlaneWave,'Reset');
invoke(PlaneWave,'Normal',num2str(Normal(1)),num2str(Normal(2)),num2str(Normal(3)));
invoke(PlaneWave,'EVector',num2str(EVector(1)),num2str(EVector(2)),num2str(EVector(3)));
invoke(PlaneWave,'Polarization',Polarization);
invoke(PlaneWave,'ReferenceFrequency',num2str(ReferenceFrequency));
invoke(PlaneWave,'PhaseDifference',num2str(PhaseDifference));
invoke(PlaneWave,'CircularDirection',CircularDirection);
invoke(PlaneWave,'AxialRatio',num2str(AxialRatio));
invoke(PlaneWave,'SetUserDecouplingPlane','False');
invoke(PlaneWave,'Store');
end