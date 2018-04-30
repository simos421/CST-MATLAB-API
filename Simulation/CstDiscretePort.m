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

function CstDiscretePort(mws,PortNumber,SetP1,SetP2)

DiscretePort = invoke(mws,'DiscretePort');
invoke(DiscretePort,'Reset');
invoke(DiscretePort,'PortNumber',int2str(PortNumber));
invoke(DiscretePort,'Type','SParameter');
invoke(DiscretePort,'Label','');
invoke(DiscretePort,'Impedance','50');
invoke(DiscretePort,'VoltagePortImpedance','0.0');
invoke(DiscretePort,'Voltage','1.0');
invoke(DiscretePort,'Current','1.0');
invoke(DiscretePort,'SetP1','False',int2str(SetP1(1)),int2str(SetP1(2)),int2str(SetP1(3)));
invoke(DiscretePort,'SetP2','False',int2str(SetP2(1)),int2str(SetP2(2)),int2str(SetP2(3)));
invoke(DiscretePort,'InvertDirection','False');
invoke(DiscretePort,'LocalCoordinates','False');
invoke(DiscretePort,'Monitor','True');
invoke(DiscretePort,'Radius','0.0'); 
invoke(DiscretePort,'Wire','');
invoke(DiscretePort,'Position','end1');
invoke(DiscretePort,'Create');
release(DiscretePort);    
end

