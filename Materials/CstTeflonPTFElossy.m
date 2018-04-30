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


function CstTeflonPTFElossy(mws)

%'@ define material: Teflon (PTFE) (lossy)

material = invoke(mws,'material');
invoke(material,'Reset');
invoke(material,'Name','Teflon (PTFE) (lossy)'); 
invoke(material,'FrqType','all');
invoke(material,'Type','Normal');
invoke(material,'SetMaterialUnit','GHz','mm');
invoke(material,'Epsilon','2.1');
invoke(material,'Mue','1.0');
invoke(material,'Kappa','0.0');
invoke(material,'TanD','0.0002');
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
invoke(material,'Rho','2200.0');
invoke(material,'ThermalType','Normal');
invoke(material,'ThermalConductivity','0.2');
invoke(material,'HeatCapacity','1.0'); 
invoke(material,'SetActiveMaterial','all');
invoke(material,'MechanicsType','Isotropic'); 
invoke(material,'YoungsModulus','0.5'); 
invoke(material,'PoissonsRatio','0.4'); 
invoke(material,'ThermalExpansionRate','140');
invoke(material,'Colour','0.94','0.82','0.76');
invoke(material,'Wireframe','False');
invoke(material,'Transparency','0');
invoke(material,'Create');
release(material);
end


