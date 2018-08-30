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


addpath(genpath('...\cst api'));

cst = actxserver('CSTStudio.application');
mws = cst.invoke('NewMWS');

Geometry = 'mm';
Frequency = 'GHz';
Time = 'ns';
TemperatureUnit = 'Kelvin';
Voltage = 'V';
Current = 'A';
Resistance = 'Ohm';
Conductance  = 'S';
Capacitance = 'PikoF';
Inductance = 'NanoH';

CstDefineUnits(mws,Geometry, Frequency, Time, TemperatureUnit, Voltage, Current, Resistance, Conductance, Capacitance, Inductance)
CstMeshInitiator(mws)


CstDefineFrequencyRange(mws,0.5,4)
minfrequency = 0.5;
x='expanded open';
CstDefineOpenBoundary(mws,minfrequency,x,x,x,x,x,x)
XminSpace = 0;
XmaxSpace = 0;
YminSpace = 0;
YmaxSpace = 0;
ZminSpace = 0;
ZmaxSpace = 0;
CstDefineBackroundMaterial(mws,XminSpace,XmaxSpace, YminSpace, YmaxSpace, ZminSpace, ZmaxSpace)

Name = 'Groundplane';
component = 'component1';
material = 'PEC';
Xrange = [-40 40];
Yrange = [-40 40];
Zrange = [0 2];

Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Conductor';
OuterRadius = 2;
InnerRadius = 0;
Xcenter = 0;
Ycenter = 0;
Zrange = [8 38];

Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

PortNumber = 1;
SetP1 = [0 0 2];
SetP2 = [0 0 8];

CstDiscretePort(mws,PortNumber,SetP1,SetP2)


monitorindex = 2.25;
CstDefineEfieldMonitor(mws,strcat('e-field', num2str(monitorindex)), monitorindex)
CstDefineFarfieldMonitor(mws,strcat('Farfield',num2str(monitorindex)), monitorindex)
CstSaveProject(mws)

CstDefineTimedomainSolver(mws,-30)


exportpath = '...\cst api\NameofyourFile';%NameofyourFile should be the same with the name of the file of line 90 bellow

format = 'db';

CstExportTouchstone(mws,exportpath, format)
data = read(rfdata.data,'NameofyourFile.s1p');
freq = data.Freq;
s_params = extract(data,'S_PARAMETERS',50);
spar = s_params(1,:);
s11 = 20*log10(sqrt(real(spar).^2 + imag(spar).^2));
plot(freq,s11); grid on; 



