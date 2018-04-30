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

function Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

% Create a brick
% Name = Name of the brick (String) 'Solid1'
% component = component list (String) 'component1'
% material = 'PEC' or 'Vaccumm' otherwise you have to call the function of
% the material you want to use before this one
% Xrange, Yrange, Zrange = starting and finishing range e.g. [0 10] (integers) 

brick = invoke(mws,'Brick');
invoke(brick,'Reset');
invoke(brick,'Name',Name);
invoke(brick,'component',component);
invoke(brick,'Material',material);


invoke(brick,'Xrange',int2str(Xrange(1)),int2str(Xrange(2)));
invoke(brick,'Yrange',int2str(Yrange(1)),int2str(Yrange(2)));
invoke(brick,'Zrange',int2str(Zrange(1)),int2str(Zrange(2)));


invoke(brick,'Create');

release(brick);

end