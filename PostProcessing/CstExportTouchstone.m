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

function CstExportTouchstone(mws,exportpath,format)


% format: use 'db', 'ri' or 'ma'
TOUCHSTONE = invoke(mws,'TOUCHSTONE');
invoke(TOUCHSTONE,'Reset');
invoke(TOUCHSTONE,'FileName',exportpath);
invoke(TOUCHSTONE,'Impedance','50');
invoke(TOUCHSTONE,'Format',format);
invoke(TOUCHSTONE,'FrequencyRange','full');
invoke(TOUCHSTONE,'Renormalize','True');
invoke(TOUCHSTONE,'UseARResults','False');
invoke(TOUCHSTONE,'SetNSamples','1001');
invoke(TOUCHSTONE,'Write');

end