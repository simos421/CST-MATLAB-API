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

Name = 'Muscle';
component = 'component1';
material = 'Muscle';
Xrange = [-65 65];
Yrange = [-77 157.5];
Zrange = [4.1 80];
CstMuscle(mws)
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Bone';
component = 'component1';
material = 'Bone';
OuterRadius = 17.5;
InnerRadius = 0;
Xcenter = 0;
Ycenter = 30;
Zrange = [-40 120];
CstBone(mws)
Cstcylinder(mws, Name, component, material, 'Y', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

component1 = 'component1:Muscle';
component2 = 'component1:Bone';
CstSubtract(mws,component1,component2)
Cstcylinder(mws, Name, component, material, 'Y', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'Coat1';
component = 'component1';
material = 'Teflon (PTFE) (lossy)';
OuterRadius = 1.4;
InnerRadius = 0;
Xcenter = 0;
Ycenter = 30;
Zrange = [2.1 45.2];
CstTeflonPTFElossy(mws)
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)


Name = 'Coat2';
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)


component1 = 'component1:Muscle';
component2 = 'component1:Coat1';
CstSubtract(mws,component1,component2)
component1 = 'component1:Bone';
component2 = 'component1:Coat2';
CstSubtract(mws,component1,component2)

Name = 'Coat1';
component = 'component1';
material = 'Teflon (PTFE) (lossy)';
OuterRadius = 1.4;
InnerRadius = 0;
Xcenter = 0;
Ycenter = 50;
Zrange = [2.1 45.2];
CstTeflonPTFElossy(mws)
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)


Name = 'Coat2';
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

component1 = 'component1:Muscle';
component2 = 'component1:Coat1';
CstSubtract(mws,component1,component2)
component1 = 'component1:Bone';
component2 = 'component1:Coat2';
CstSubtract(mws,component1,component2)



Name = 'Coat1';
component = 'component1';
material = 'Teflon (PTFE) (lossy)';
OuterRadius = 1.4;
InnerRadius = 0.8;
Xcenter = 0;
Ycenter = 30;
Zrange = [2.1 45.2];
CstTeflonPTFElossy(mws)
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'Coatcap1';
component = 'component1';
material = 'Teflon (PTFE) (lossy)';
OuterRadius = 1.4;
InnerRadius = 0;
Xcenter = 0;
Ycenter = 30;
Zrange = [45 45.2];
CstTeflonPTFElossy(mws)
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)


Name = 'Coat2';
component = 'component1';
material = 'Teflon (PTFE) (lossy)';
OuterRadius = 1.4;
InnerRadius = 0.8;
Xcenter = 0;
Ycenter = 50;
Zrange = [2.1 45.2];
CstTeflonPTFElossy(mws)
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'Coatcap2';
component = 'component1';
material = 'Teflon (PTFE) (lossy)';
OuterRadius = 1.4;
InnerRadius = 0;
Xcenter = 0;
Ycenter = 50;
Zrange = [45 45.2];
CstTeflonPTFElossy(mws)
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

component1 = 'component1:Coat1';
component2 = 'component1:Coatcap1';
CstAdd(mws,component1,component2)
component1 = 'component1:Coat2';
component2 = 'component1:Coatcap2';
CstAdd(mws,component1,component2)

Name = 'Conductor1';
component = 'component1';
material = 'PEC';
OuterRadius = 0.8;
InnerRadius = 0;
Xcenter = 0;
Ycenter = 30;
Zrange = [2 40];
CstTeflonPTFElossy(mws)
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'Conductor2';
component = 'component1';
material = 'PEC';
OuterRadius = 0.8;
InnerRadius = 0;
Xcenter = 0;
Ycenter = 50;
Zrange = [2 40];
CstTeflonPTFElossy(mws)
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'Groundplane1';
component = 'component1';
material = 'PEC';
Xrange = [-40 40];
Yrange = [-51 39];
Zrange = [-4 -2];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Groundplane2';
component = 'component1';
material = 'PEC';
Xrange = [-40 40];
Yrange = [41 129];
Zrange = [-4 -2];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

PortNumber = 1;
SetP1 = [0 50 2];
SetP2 = [0 50 -2];
CstDiscretePort(mws,PortNumber,SetP1,SetP2)


PortNumber = 2;
SetP1 = [0 30 2];
SetP2 = [0 30 -2];
CstDiscretePort(mws,PortNumber,SetP1,SetP2)

CstDefineFrequencyRange(mws,0.5,4)

for monitorindex = 0.5:0.5:4 
CstDefineEfieldMonitor(mws,strcat('e-field', num2str(monitorindex)), monitorindex)
CstDefineFarfieldMonitor(mws,strcat('Farfield',num2str(monitorindex)), monitorindex)
end

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
CstSaveProject(mws) 
CstDefineTimedomainSolver(mws,-30)

exportpath = '...\cst api\NameofyourFile'; %NameofyourFile should be the same with the name of the file of line 235 bellow
format = 'db';

CstExportTouchstone(mws,exportpath, format)
data = read(rfdata.data,'NameofyourFile.s2p');
freq = data.Freq;
s_params = extract(data,'S_PARAMETERS',50);
spar = squeeze(s_params(1,:,:));
spar = spar';
sdb = 20*log10(sqrt(real(spar).^2 + imag(spar).^2));
S11 = sdb(:,1);
S21 = sdb(:,2);
figure
subplot(2,1,1)
plot(freq,S11); grid on;
title('S11')
subplot(2,1,2)
plot(freq,S21); grid on;
title('S21')

for monitorindex = 0.5:0.5:4 
port = 1;
exportpath = strcat('...\cstapitest\farff1',num2str(monitorindex),'.txt');
CstExportFarfieldSourceAngleStep(mws,exportpath,monitorindex,port,StepTheta,StepPhi)
port = 2;
exportpath = strcat('...\cstapitest\farff2',num2str(monitorindex),'.txt');
CstExportFarfieldSourceAngleStep(mws,exportpath,monitorindex,port,StepTheta,StepPhi)
end
