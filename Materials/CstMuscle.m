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


function CstMuscle(mws)

material = invoke(mws,'material');
invoke(material,'Reset');
invoke(material,'Name','Muscle');        
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
invoke(material,'AddDispersionFittingValueEps','0.1', '65.9724916504545', '127.192797239797', '1.0');     
invoke(material,'AddDispersionFittingValueEps','0.2', '60.2280314197783', '66.7852481428503', '1.0');     
invoke(material,'AddDispersionFittingValueEps','0.3', '58.2010632452303', '46.1678385280381', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.4', '57.1286659331816', '35.7847612362403', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.422222222222222', '56.9527716128403', '34.1456274103791', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.5', '56.4454886710024', '29.5676459467637', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.6', '55.9594825719793', '25.4598232248452', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.7', '55.5870383230944', '22.5688659080254', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.744444444444444', '55.4460666146869', '21.5480357567376', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.8', '55.2857933341328', '20.4441081345782', '1.0');
invoke(material,'AddDispersionFittingValueEps','0.9', '55.0319456602686', '18.8331012626125', '1.0');
invoke(material,'AddDispersionFittingValueEps','1.06666666666667', '54.6774425815976', '16.9010535749291', '1.0');
invoke(material,'AddDispersionFittingValueEps','1.38888888888889', '54.1285131484409', '14.7095990740045', '1.0');
invoke(material,'AddDispersionFittingValueEps','1.71111111111111', '53.6680496124579', '13.5891943396758', '1.0');
invoke(material,'AddDispersionFittingValueEps','2.03333333333333', '53.2476410075004', '13.0261988069251', '1.0');
invoke(material,'AddDispersionFittingValueEps','2.35555555555556', '52.8455894055116', '12.7858457903486', '1.0');
invoke(material,'AddDispersionFittingValueEps','2.67777777777778', '52.4509933654632', '12.74554913806', '1.0');
invoke(material,'AddDispersionFittingValueEps','3', '52.057997686553', '12.8350615969651', '1.0');
invoke(material,'UseGeneralDispersionEps','True');
invoke(material,'UseGeneralDispersionMue','False');
invoke(material,'NLAnisotropy','False');
invoke(material,'NLAStackingFactor','1');
invoke(material,'NLADirectionX','1');
invoke(material,'NLADirectionY','0');     
invoke(material,'NLADirectionZ','0'); 
invoke(material,'Rho','1041'); 
invoke(material,'ThermalType','Normal');
invoke(material,'ThermalConductivity','0.53');
invoke(material,'HeatCapacity','3.546');
invoke(material,'MetabolicRate','480');
invoke(material,'BloodFlow','2700');
invoke(material,'VoxelConvection','0');
invoke(material,'MechanicsType','Unused'); 
invoke(material,'Colour','0.784314','0.470588','0.470588');
invoke(material,'Wireframe','False');
invoke(material,'Reflection','False');
invoke(material,'Allowoutline','False');
invoke(material,'Transparentoutline','False');
invoke(material,'Transparency','0');
invoke(material,'Create');
release(material);
end
     