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

function CstAir(mws)


material = invoke(mws,'Material');
invoke(material,'Reset');
invoke(material,'Name','Air'); 
invoke(material,'FrqType','all');
invoke(material,'Type','Normal');
invoke(material,'SetMaterialUnit','GHz','mm');
invoke(material,'Epsilon','1.00059');
invoke(material,'Mue','1.0');
invoke(material,'Kappa','0');
invoke(material,'TanD','0.0');
invoke(material,'TanDFreq','0.0');
invoke(material,'TanDGiven','False');
invoke(material,'TanDModel','ConstKappa');
invoke(material,'KappaM','0');
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
invoke(material,'Rho','1.204');
invoke(material,'ThermalType','Normal');
invoke(material,'ThermalConductivity','0.026');
invoke(material,'HeatCapacity','1.005'); 
invoke(material,'SetActiveMaterial','all');

invoke(material,'Colour','0.682353','0.717647','1');
invoke(material,'Wireframe','False');
invoke(material,'Transparency','0');
invoke(material,'Create');
release(material);

end