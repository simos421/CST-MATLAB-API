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


function CstCopperPureLossy(mws)
%'@ define material: Copper (pure)

material = invoke(mws,'material');
invoke(material,'Reset');
invoke(material,'Name','Copper (pure)'); 
invoke(material,'FrqType','all');
invoke(material,'Type','Lossy metal');
invoke(material,'MaterialUnit', 'Frequency', 'GHz');
invoke(material,'MaterialUnit','Geometry','mm');
invoke(material,'MaterialUnit','Time','s');
invoke(material,'MaterialUnit','Temperature','Kelvin');
invoke(material,'Mue','1.0');
invoke(material,'Sigma','5.96e+007');
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
invoke(material,'ReferenceCoordSystem','Global');
invoke(material,'CoordSystemType','Cartesian');
invoke(material,'NLAnisotropy','False');
invoke(material,'NLAStackingFactor','1');
invoke(material,'NLADirectionX','1');
invoke(material,'NLADirectionY','0');
invoke(material,'NLADirectionZ','0');
invoke(material,'ParticleProperty','SecondaryEmission');
invoke(material,'SeModel','Furman');
invoke(material,'SeVaughan','175','2.25','0','1.0','7.5');
invoke(material,'SePlot1D','True','0','100','0','1000');
invoke(material,'SeMaxSecondaries','10');
invoke(material,'SeTsParam_T1','0.66');
invoke(material,'SeTsParam_T2','0.80');
invoke(material,'SeTsParam_T3','0.70');
invoke(material,'SeTsParam_T4','1.00');
invoke(material,'SeTsParam_SEY','2.25');
invoke(material,'SeTsParam_Energy','175');
invoke(material,'SeTsParam_S','1.33');
invoke(material,'SeTsParam_PN','0','1.6');
invoke(material,'SeTsParam_PN','1','2.0');
invoke(material,'SeTsParam_PN','2','1.8');
invoke(material,'SeTsParam_PN','3','4.7');
invoke(material,'SeTsParam_PN','4','1.8');
invoke(material,'SeTsParam_PN','5','2.4');
invoke(material,'SeTsParam_PN','6','1.8');
invoke(material,'SeTsParam_PN','7','1.8');
invoke(material,'SeTsParam_PN','8','2.3');
invoke(material,'SeTsParam_PN','9','1.8');
invoke(material,'SeTsParam_EpsN','0','3.90');
invoke(material,'SeTsParam_EpsN','1','6.20');
invoke(material,'SeTsParam_EpsN','2','13.00');
invoke(material,'SeTsParam_EpsN','3','8.80');
invoke(material,'SeTsParam_EpsN','4','6.25');
invoke(material,'SeTsParam_EpsN','5','2.25');
invoke(material,'SeTsParam_EpsN','6','9.20');
invoke(material,'SeTsParam_EpsN','7','5.30');
invoke(material,'SeTsParam_EpsN','8','17.80');
invoke(material,'SeTsParam_EpsN','9','10.00');
invoke(material,'SeRdParam_R','1.0');
invoke(material,'SeRdParam_R1','0.26');
invoke(material,'SeRdParam_R2','2.0');
invoke(material,'SeRdParam_Q','0.4');
invoke(material,'SeRdParam_P1Inf','0.01');
invoke(material,'SeRdParam_Energy','40.0');
invoke(material,'SeBsParam_Sigma','1.9');
invoke(material,'SeBsParam_E1','0.26');
invoke(material,'SeBsParam_E2','2.0');
invoke(material,'SeBsParam_P1Hat','0.02');
invoke(material,'SeBsParam_P1Inf','0.01');
invoke(material,'SeBsParam_Energy','0.0');
invoke(material,'SeBsParam_P','0.9');
invoke(material,'SeBsParam_W','100.0');



invoke(material,'FrqType','static');
invoke(material,'Type','Normal');
invoke(material,'SetMaterialUnit','Hz','mm');
invoke(material,'Epsilon','1');
invoke(material,'Mue','1.0');
invoke(material,'Kappa','5.96e+007');

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

invoke(material,'Colour','1','1','0');
invoke(material,'Wireframe','False');
invoke(material,'Reflection','False');
invoke(material,'Allowoutline','True');
invoke(material,'Transparentoutline','False');
invoke(material,'Transparency','0');
invoke(material,'Create');
release(material);
end
