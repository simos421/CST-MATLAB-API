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

function CstWaveguidePort(mws,PortNumber, Xrange, Yrange, Zrange, XrangeAdd, YrangeAdd, ZrangeAdd,Coordinates,Orientation)

%coordinates = 'Picks' or 'Full'
%orientation = 'positive' or 'xmax'
Port = invoke(mws,'Port');
invoke(Port,'Reset');
invoke(Port,'PortNumber',num2str(PortNumber));
invoke(Port,'Label','');
invoke(Port,'NumberOfModes','1');
invoke(Port,'AdjustPolarization','False');
invoke(Port,'PolarizationAngle','0.0');
invoke(Port,'ReferencePlaneDistance','0');
invoke(Port,'TextSize','50');
invoke(Port,'Coordinates',Coordinates);
invoke(Port,'Orientation',Orientation);
invoke(Port,'PortOnBound','False');
invoke(Port,'ClipPickedPortToBound','False');  
invoke(Port,'Xrange',int2str(Xrange(1)),int2str(Xrange(2)));
invoke(Port,'Yrange',int2str(Yrange(1)),int2str(Yrange(2)));
invoke(Port,'Zrange',int2str(Zrange(1)),int2str(Zrange(2)));
invoke(Port,'XrangeAdd',int2str(XrangeAdd(1)),int2str(XrangeAdd(2)));
invoke(Port,'YrangeAdd',int2str(YrangeAdd(1)),int2str(YrangeAdd(2)));
invoke(Port,'ZrangeAdd',int2str(ZrangeAdd(1)),int2str(ZrangeAdd(2)));
invoke(Port,'SingleEnded','False');
invoke(Port,'Create');
end 