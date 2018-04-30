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

function CstSphere(mws, Name, component, material, Axis, CenterRadius, TopRadius, BottomRadius, Center)


%'@ define sphere
% Axis is a string
Sphere = invoke(mws,'Sphere');
invoke(Sphere,'Reset');
invoke(Sphere,'Name', Name);
invoke(Sphere,'Component', component);
invoke(Sphere,'Material', material);
invoke(Sphere,'Axis', Axis);
invoke(Sphere,'CenterRadius', num2str(CenterRadius));
invoke(Sphere,'TopRadius', num2str(TopRadius));
invoke(Sphere,'BottomRadius', num2str(BottomRadius));
invoke(Sphere,'Center', num2str(Center(1)), num2str(Center(2)), num2str(Center(3)));
invoke(Sphere,'Segments', '0');
invoke(Sphere,'Create');     
    
end