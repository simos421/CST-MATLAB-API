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

function CstDefineHfieldMonitor(mws,Hfieldname, frequency)

%'@ define monitor: e-field (f=2.25)
% Efieldname is a string

Monitor = invoke(mws,'Monitor');
invoke(Monitor,'Reset');
invoke(Monitor,'Name',Hfieldname);
invoke(Monitor,'Dimension','Volume');
invoke(Monitor,'Domain','Frequency');
invoke(Monitor,'FieldType','Hfield');
invoke(Monitor,'Frequency',num2str(frequency));
invoke(Monitor,'UseSubvolume','False');
invoke(Monitor,'SetSubvolume','-209.896229', '229.896229', '-179.896229', '179.896229', '-149.896229', '187.896229');
invoke(Monitor,'Create');


end
