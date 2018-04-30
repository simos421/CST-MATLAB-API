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

function CstBone(mws)

material = invoke(mws,'material');
invoke(material,'Reset');
invoke(material,'Name','Bone');    
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
invoke(material,'AddDispersionFittingValueEps','0.1', '15.2825690817463', '11.5605196735103', '1.0');     
invoke(material,'AddDispersionFittingValueEps','0.422222222222222', '13.0968478993582', '3.97291789963244', '1.0');     
invoke(material,'AddDispersionFittingValueEps','0.744444444444444', '12.611927560421', '3.02791834284726', '1.0');
invoke(material,'AddDispersionFittingValueEps','1.06666666666667', '12.3066675707889', '2.76772128756326', '1.0');
invoke(material,'AddDispersionFittingValueEps','1.38888888888889', '12.0593003418143', '2.71071331604512', '1.0');
invoke(material,'AddDispersionFittingValueEps','1.71111111111111', '11.8385069451693', '2.7344343025119', '1.0');
invoke(material,'AddDispersionFittingValueEps','2.03333333333333', '11.6327384184551', '2.79398485794209', '1.0');
invoke(material,'AddDispersionFittingValueEps','2.35555555555556', '11.4368765403937', '2.86945816308061', '1.0');
invoke(material,'AddDispersionFittingValueEps','2.67777777777778', '11.2483898509305', '2.95097838294358', '1.0');
invoke(material,'UseGeneralDispersionEps','True');
invoke(material,'UseGeneralDispersionMue','False');
invoke(material,'NLAnisotropy','False');
invoke(material,'NLAStackingFactor','1');
invoke(material,'NLADirectionX','1');
invoke(material,'NLADirectionY','0');     
invoke(material,'NLADirectionZ','0');  
invoke(material,'Rho','1850'); 
invoke(material,'ThermalType','Normal');
invoke(material,'ThermalConductivity','0.41');
invoke(material,'HeatCapacity','1.3');
invoke(material,'SetActiveMaterial','all');
invoke(material,'MechanicsType','Isotropic');
invoke(material,'YoungsModulus','10');
invoke(material,'MetabolicRate','610');
invoke(material,'BloodFlow','3400');
invoke(material,'VoxelConvection','0');
invoke(material,'Colour','0.862745','0.862745','0.862745');
invoke(material,'Wireframe','False');
invoke(material,'Reflection','False');
invoke(material,'Allowoutline','False');
invoke(material,'Transparentoutline','False');
invoke(material,'Transparency','0');
invoke(material,'Create');
release(material);
end
     