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


function CstCopperAnnealedLossy(mws)
%'@ define material: Copper (annealed)

material = invoke(mws,'material');
invoke(material,'Reset');
invoke(material,'Name','Copper (annealed)'); 
invoke(material,'FrqType','static');
invoke(material,'Type','Normal');
invoke(material,'SetMaterialUnit','Hz','mm');
invoke(material,'Epsilon','1');
invoke(material,'Mue','1.0');
invoke(material,'Kappa','5.8e+007');
invoke(material,'TanD','0');
invoke(material,'TanDFreq','0.0');
invoke(material,'TanDGiven','False');
invoke(material,'TanDModel','ConstTanD');
invoke(material,'KappaM','0.0');
invoke(material,'TanDM','0.0');
invoke(material,'TanDMFreq','0.0');
invoke(material,'TanDMGiven','False');
invoke(material,'TanDMModel','ConstTanD');
invoke(material,'DispModelEps','None');
invoke(material,'DispModelMue','None');
invoke(material,'DispersiveFittingSchemeEps','Nth Order');
invoke(material,'DispersiveFittingSchemeMue','Nth Order');
invoke(material,'UseGeneralDispersionEps','False');
invoke(material,'UseGeneralDispersionMue','False');
invoke(material,'FrqType','all');
invoke(material,'Type','Lossy metal');
invoke(material,'SetMaterialUnit','GHz','mm');
invoke(material,'Mue','1.0');
invoke(material,'Kappa','5.8e+007');
invoke(material,'Rho','8930.0');
invoke(material,'ThermalType','Normal');
invoke(material,'ThermalConductivity','401.0');
invoke(material,'HeatCapacity','0.39');
invoke(material,'MetabolicRate','0');
invoke(material,'BloodFlow','0');
invoke(material,'VoxelConvection','0');
invoke(material,'MechanicsType','Isotropic');
invoke(material,'YoungsModulus','120'); 
invoke(material,'PoissonsRatio','0.33'); 
invoke(material,'ThermalExpansionRate','17');
invoke(material,'Colour','1','1','0');
invoke(material,'Wireframe','False');
invoke(material,'Reflection','False');
invoke(material,'Allowoutline','True');
invoke(material,'Transparentoutline','False');
invoke(material,'Transparency','0');
invoke(material,'Create');
release(material);
end
