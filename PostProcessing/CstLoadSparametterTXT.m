function [Frequency, Sparametter] = CstLoadSparametterTXT(filenameTXT)

fid   = fopen(filenameTXT,'r');
scannedSparam = textscan(fid, '%f %f', 'Delimiter','Whitespace','HeaderLines',2);
fclose(fid);
SP = cell2mat(scannedSparam);
Frequency = SP(:,1);
Sparametter = SP(:,2);
end