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

function CstDefaultUnits(mws)

%define units (Default selection)
Geometry = 'mm';
Frequency = 'GHz';
Time = 'ns';
TemperatureUnit = 'Kelvin';
Voltage = 'V';
Current = 'A';
Resistance = 'Ohm';
Conductance  = 'S';
Capacitance = 'PikoF';
Inductance = 'NanoH';

Units = invoke(mws,'Units');
invoke(Units,'Geometry',Geometry);
invoke(Units,'Frequency',Frequency);
invoke(Units,'Time',Time);
invoke(Units,'TemperatureUnit',TemperatureUnit);
invoke(Units,'Voltage',Voltage);
invoke(Units,'Current',Current);
invoke(Units,'Resistance',Resistance);
invoke(Units,'Conductance',Conductance);
invoke(Units,'Capacitance',Capacitance);
invoke(Units,'Inductance',Inductance);

end



