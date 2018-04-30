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

function CstDefineBackroundMaterial(mws,XminSpace,XmaxSpace, YminSpace, YmaxSpace, ZminSpace, ZmaxSpace)
%'@ define background
%Normaly the values are:
% XminSpace = 0;
% XmaxSpace = 0;
% YminSpace = 0;
% YmaxSpace = 0;
% ZminSpace = 0;
% ZmaxSpace = 0;
Background = invoke(mws,'Background');
invoke(Background,'ResetBackground');
invoke(Background,'XminSpace',num2str(XminSpace));
invoke(Background,'XmaxSpace',num2str(XmaxSpace));
invoke(Background,'YminSpace',num2str(YminSpace));
invoke(Background,'YmaxSpace',num2str(YmaxSpace));
invoke(Background,'ZminSpace',num2str(ZminSpace));
invoke(Background,'ZmaxSpace',num2str(ZmaxSpace));
invoke(Background,'ApplyInAllDirections','False');

material = invoke(mws,'Material');
invoke(material,'Reset');
invoke(material,'FrqType','all');
invoke(material,'Type','Normal');
invoke(material,'MaterialUnit','Frequency','Hz');
invoke(material,'MaterialUnit','Geometry','m');
invoke(material,'MaterialUnit','Time','s');
invoke(material,'MaterialUnit','Temperature','Kelvin');
invoke(material,'Epsilon','1.0');
invoke(material,'Mue','1.0');
invoke(material,'Sigma','0.0');
invoke(material,'TanD','0.0');
invoke(material,'TanDFreq','0.0');
invoke(material,'TanDGiven','False');
invoke(material,'TanDModel','ConstSigma');
invoke(material,'EnableUserConstTanDModelOrderEps','False');
invoke(material,'ConstTanDModelOrderEps','1');
invoke(material,'SetElParametricConductivity','False');
invoke(material,'ReferenceCoordSystem','Global');
invoke(material,'CoordSystemType','Cartesian');
invoke(material,'SigmaM','0');
invoke(material,'TanDM','0.0');
invoke(material,'TanDMFreq','0.0');
invoke(material,'TanDMGiven','False');
invoke(material,'TanDMModel','ConstSigma');


invoke(material,'EnableUserConstTanDModelOrderMue','False');     
invoke(material,'ConstTanDModelOrderMue','1'); 
invoke(material,'SetMagParametricConductivity','False'); 
invoke(material,'DispModelEps','None');
invoke(material,'DispModelMue','None');
invoke(material,'DispersiveFittingSchemeEps','Nth Order');
invoke(material,'MaximalOrderNthModelFitEps','10');
invoke(material,'ErrorLimitNthModelFitEps','0.1');
invoke(material,'UseOnlyDataInSimFreqRangeNthModelEps','False');
invoke(material,'DispersiveFittingSchemeMue','Nth Order');
invoke(material,'MaximalOrderNthModelFitMue','10');


invoke(material,'ErrorLimitNthModelFitMue','0.1');
invoke(material,'UseOnlyDataInSimFreqRangeNthModelMue','False');
invoke(material,'UseGeneralDispersionEps','False');
invoke(material,'UseGeneralDispersionMue','False');
invoke(material,'NLAnisotropy','False');
invoke(material,'NLAStackingFactor','1');
invoke(material,'NLADirectionX','1');
invoke(material,'NLADirectionY','0');
invoke(material,'NLADirectionZ','0');
invoke(material,'Rho','0.0');
invoke(material,'ThermalType','Normal');
invoke(material,'ThermalConductivity','0.0');
invoke(material,'HeatCapacity','0.0');
invoke(material,'MetabolicRate','0');
invoke(material,'BloodFlow','0');
invoke(material,'VoxelConvection','0');
invoke(material,'MechanicsType','Unused');
invoke(material,'Colour','0.6','0.6','0.6');
invoke(material,'Wireframe','False');   
invoke(material,'Reflection','False');
invoke(material,'Allowoutline','True');
invoke(material,'Transparentoutline','False');
invoke(material,'Transparency','0');
invoke(material,'ChangeBackgroundMaterial');    
     
end 
