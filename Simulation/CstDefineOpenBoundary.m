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

function CstDefineOpenBoundary(mws,minfrequency,Xmin,Xmax,Ymin,Ymax,Zmin,Zmax)

%use this function AFTER assigning all the monitors!!
% minfrequency is the frequency of the lowest monitor
%Xmin,Xmax,Ymin,Ymax,Zmin,Zmax = 'expanded open', 'open', 'electric',
%'magnetic', 'periodic', 'conducting wall', 'unit cell'

Boundary = invoke(mws,'Boundary');
invoke(Boundary,'Xmin',Xmin);
invoke(Boundary,'Xmax',Xmax);
invoke(Boundary,'Ymin',Ymin);
invoke(Boundary,'Ymax',Ymax);
invoke(Boundary,'Zmin',Zmin);
invoke(Boundary,'Zmax',Zmax);
invoke(Boundary,'Xsymmetry','none');
invoke(Boundary,'Ysymmetry','none');
invoke(Boundary,'Zsymmetry','none');
invoke(Boundary,'XminThermal','isothermal');
invoke(Boundary,'XmaxThermal','isothermal');
invoke(Boundary,'YminThermal','isothermal');
invoke(Boundary,'YmaxThermal','isothermal');
invoke(Boundary,'ZminThermal','isothermal');
invoke(Boundary,'ZmaxThermal','isothermal');
invoke(Boundary,'XsymmetryThermal','none');
invoke(Boundary,'YsymmetryThermal','none');
invoke(Boundary,'ZsymmetryThermal','none');
invoke(Boundary,'ApplyInAllDirections','False');
invoke(Boundary,'ApplyInAllDirectionsThermal','False');
invoke(Boundary,'XminTemperature','');
invoke(Boundary,'XminTemperatureType','None'); 
invoke(Boundary,'XmaxTemperature','');
invoke(Boundary,'XmaxTemperatureType','None');
invoke(Boundary,'YminTemperature','');
invoke(Boundary,'YminTemperatureType','None'); 
invoke(Boundary,'YmaxTemperature','');
invoke(Boundary,'YmaxTemperatureType','None');
invoke(Boundary,'ZminTemperature','');
invoke(Boundary,'ZminTemperatureType','None'); 
invoke(Boundary,'ZmaxTemperature',''); 
invoke(Boundary,'ZmaxTemperatureType','None');  
if isequal(Xmin,'unit cell')
    invoke(Boundary,'XPeriodicShift','0.0'); 
    invoke(Boundary,'YPeriodicShift','0.0');
    invoke(Boundary,'ZPeriodicShift','0.0');
    invoke(Boundary,'PeriodicUseConstantAngles','False');
    invoke(Boundary,'SetPeriodicBoundaryAngles','0.0','0.0');
    invoke(Boundary,'SetPeriodicBoundaryAnglesDirection','outward');
    invoke(Boundary,'UnitCellFitToBoundingBox','True');
    invoke(Boundary,'UnitCellDs1','0.0');
    invoke(Boundary,'UnitCellDs2','0.0');
    invoke(Boundary,'UnitCellAngle','90.0');
end
if isequal(Xmin,'expanded open')      
invoke(Boundary,'ReflectionLevel','0.0001');  
invoke(Boundary,'MinimumDistanceType','Fraction');  
invoke(Boundary,'MinimumDistancePerWavelengthNewMeshEngine','4');
invoke(Boundary,'MinimumDistanceReferenceFrequencyType','CenterNMonitors');
invoke(Boundary,'FrequencyForMinimumDistance',num2str(minfrequency));
invoke(Boundary,'SetAbsoluteDistance','0.0'); 
Plot = invoke(mws,'Plot');
invoke(Plot,'DrawBox','True');
end

     
end