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

function CstActivateLocalWCS(mws, SetNormal, SetOrigin, SetUVector, Activate)

%SetNormal = [0 0 1]
%SetOrigin = [0 0 0]
%SetUVector = [1 0 0]
%Activate = 1 or 0;


if Activate == 1
WCS = invoke(mws,'WCS');
invoke(WCS,'ActivateWCS','local');
invoke(WCS,'SetNormal',num2str(SetNormal(1)),num2str(SetNormal(2)),num2str(SetNormal(3)));
invoke(WCS,'SetOrigin',num2str(SetOrigin(1)),num2str(SetOrigin(2)),num2str(SetOrigin(3)));
invoke(WCS,'SetUVector',num2str(SetUVector(1)),num2str(SetUVector(2)),num2str(SetUVector(3)));
end
if Activate == 0
  WCS = invoke(mws,'WCS');
  invoke(WCS,'ActivateWCS','Global'); 
end


end