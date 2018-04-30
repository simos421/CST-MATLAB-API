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

function CstRogersTMM10ilossy(mws)
% Rogers TMM 10i (lossy)


material = invoke(mws,'material');
invoke(material,'Reset');
invoke(material,'Name','Rogers TMM 10i (lossy)'); 
invoke(material,'FrqType','all');
invoke(material,'Type','Normal');
invoke(material,'SetMaterialUnit','GHz','mm');
invoke(material,'Epsilon','9.8');
invoke(material,'Mue','1.0');
invoke(material,'Kappa','0.0');
invoke(material,'TanD','0.002');
invoke(material,'TanDFreq','10.0');
invoke(material,'TanDGiven','True');
invoke(material,'TanDModel','ConstTanD');
invoke(material,'KappaM','0.0');
invoke(material,'TanDM','0.0');
invoke(material,'TanDMFreq','0.0');
invoke(material,'TanDMGiven','False');
invoke(material,'TanDMModel','ConstKappa');
invoke(material,'DispModelEps','None');
invoke(material,'DispModelMue','None');
invoke(material,'DispersiveFittingSchemeEps','General 1st');
invoke(material,'DispersiveFittingSchemeMue','General 1st');
invoke(material,'UseGeneralDispersionEps','False');
invoke(material,'UseGeneralDispersionMue','False');
invoke(material,'Rho','0.0');
invoke(material,'ThermalType','Normal');
invoke(material,'ThermalConductivity','0.76');
invoke(material,'ThermalType','Normal'); 
invoke(material,'SetActiveMaterial','all');
invoke(material,'Colour','0.94','0.82','0.76');
invoke(material,'Wireframe','False');
invoke(material,'Transparency','0');
invoke(material,'Create');
release(material);
end