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

function CstDiscreteFacePort(mws,PortNumber,SetP1,SetP2)


DiscreteFacePort = invoke(mws,'DiscreteFacePort');

invoke(DiscreteFacePort,'Reset');
invoke(DiscreteFacePort,'PortNumber',int2str(PortNumber));
invoke(DiscreteFacePort,'Type','SParameter');
invoke(DiscreteFacePort,'Label','');
invoke(DiscreteFacePort,'Impedance','50');
invoke(DiscreteFacePort,'VoltagePortImpedance','0.0');
invoke(DiscreteFacePort,'VoltageAmplitude','1.0');
invoke(DiscreteFacePort,'SetP1','True',int2str(SetP1(1)),int2str(SetP1(2)),int2str(SetP1(3)));
invoke(DiscreteFacePort,'SetP2','True',int2str(SetP2(1)),int2str(SetP2(2)),int2str(SetP2(3)));
invoke(DiscreteFacePort,'LocalCoordinates','False');
invoke(DiscreteFacePort,'InvertDirection','False');
invoke(DiscreteFacePort,'CenterEdge','True');
invoke(DiscreteFacePort,'Monitor','True');
invoke(DiscreteFacePort,'UseProjection','False');
invoke(DiscreteFacePort,'ReverseProjection','False');
invoke(DiscreteFacePort,'Create');

release(DiscreteFacePort); 

end