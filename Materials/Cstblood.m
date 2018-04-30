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

function Cstblood(mws)

material = invoke(mws,'material');
invoke(material,'Reset');
invoke(material,'Name','Blood'); %Blood      
invoke(material,'FrqType','all');
invoke(material,'Type','Normal');
invoke(material,'SetMaterialUnit','GHz','mm');    
invoke(material,'Epsilon','1');
invoke(material,'Mue','1');    
invoke(material,'Sigma','0.0');  
invoke(material,'TanD','0.0');
invoke(material,'TanDFreq','0.0');
invoke(material,'TanDGiven','False');
invoke(material,'TanDModel','ConstSigma');
invoke(material,'ConstTanDModelOrderEps','1');     
invoke(material,'ReferenceCoordSystem','Global');     
invoke(material,'CoordSystemType','Cartesian');     
invoke(material,'SigmaM','0.0');  
invoke(material,'TanDM','0.0');
invoke(material,'TanDMFreq','0.0');
invoke(material,'TanDMGiven','False');
invoke(material,'TanDMModel','ConstSigma');
invoke(material,'ConstTanDModelOrderMue','1');      
invoke(material,'DispModelEps','None');    
invoke(material,'DispModelMue','None');
invoke(material,'DispersiveFittingSchemeEps','Nth Order');  
invoke(material,'MaximalOrderNthModelFitEps','3');  
invoke(material,'ErrorLimitNthModelFitEps','0.01');
invoke(material,'DispersiveFittingSchemeMue','Nth Order');     
invoke(material,'AddDispersionFittingValueEps','0.1', '76.8182454443825', '221.641134494173', '1.0');     
invoke(material,'AddDispersionFittingValueEps','0.2', '68.4738432550289', '115.059990632458', '1.0');     
invoke(material,'AddDispersionFittingValueEps','0.3', '65.6502510183341', '78.8589515742776', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.4', '64.1828321718796', '60.6489945539656', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.422222222222222', '63.9438618885212', '57.7730434712015', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.5', '63.257247554219', '49.7333267655039', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.6', '62.6027643145963', '42.5001241802731', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.7', '62.1030699559808', '37.3865932409505', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.744444444444444', '61.9142639813766', '35.5731389635495', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.8', '61.6997719763589', '33.6053481035262', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.9', '61.3602871921475', '30.7161644656542', '1.0');
invoke(material,'AddDispersionFittingValueEps','1.06666666666667', '60.8862780821185', '27.206610582395', '1.0');
invoke(material,'AddDispersionFittingValueEps','1.38888888888889', '60.1510807057843', '23.0953297030954', '1.0');
invoke(material,'AddDispersionFittingValueEps','1.71111111111111', '59.5320763343363', '20.8376504484609', '1.0');
invoke(material,'AddDispersionFittingValueEps','2.03333333333333', '58.9648498262843', '19.545237054196', '1.0');
invoke(material,'AddDispersionFittingValueEps','2.35555555555556', '58.4208755792015', '18.8129113591261', '1.0');
invoke(material,'AddDispersionFittingValueEps','2.67777777777778', '57.8860468115685', '18.4294319222186', '1.0');
invoke(material,'AddDispersionFittingValueEps','3', '57.3529593274927', '18.4294319222186', '1.0');
invoke(material,'UseGeneralDispersionEps','True');
invoke(material,'UseGeneralDispersionMue','False');
invoke(material,'NLAnisotropy','False');
invoke(material,'NLAStackingFactor','1');
invoke(material,'NLADirectionX','1');
invoke(material,'NLADirectionY','0');     
invoke(material,'NLADirectionZ','0');  
invoke(material,'Rho','1060'); 
invoke(material,'ThermalType','Normal');
invoke(material,'ThermalConductivity','0.51');
invoke(material,'HeatCapacity','3.824');
invoke(material,'MetabolicRate','0');
invoke(material,'BloodFlow','1e+006');
invoke(material,'VoxelConvection','0');
invoke(material,'MechanicsType','Unused');
invoke(material,'Colour','1','0','0');
invoke(material,'Wireframe','False');
invoke(material,'Reflection','False');
invoke(material,'Allowoutline','False');
invoke(material,'Transparentoutline','False');
invoke(material,'Transparency','0');
invoke(material,'Create');
release(material);
end
     