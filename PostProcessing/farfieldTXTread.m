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
function [combinedff] = farfieldTXTread(port,monitorindex)

fid   = fopen(strcat('farff',num2str(port),num2str(monitorindex),'.txt'));
scannedff = textscan(fid, '%f %f %f %f %f %f', 'Delimiter','Whitespace','HeaderLines',31);
fclose(fid);

farfield = cell2mat(scannedff);

farfield(:,4) = farfield(:,4)*1j;
farfield(:,6) = farfield(:,6)*1j;

combinedff = [farfield(:,1) farfield(:,2) sum(farfield(:,3:4),2) sum(farfield(:,5:6),2)];


end