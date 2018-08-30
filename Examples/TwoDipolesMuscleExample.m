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

CstDefaultUnits(mws)
CstMeshInitiator(mws)
ComponentList = 'component1';
CstCopperAnnealedLossy(mws)


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

Name = 'Muscle';
component = 'component1';
material = 'Muscle';
Xrange = [-90 110];
Yrange = [-60 60];
Zrange = [-50 50];
CstMuscle(mws)
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

material = 'Copper (annealed)';
Name = 'Minus1';
OuterRadius = 2;
InnerRadius = 0;
Xcenter = -30;
Ycenter = 0;
Zrange = [-31 31];
Cstcylinder(mws, Name, ComponentList, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'Minus2';
OuterRadius = 2;
InnerRadius = 0;
Xcenter = 50;
Ycenter = 0;
Zrange = [-31 31];
Cstcylinder(mws, Name, ComponentList, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

component1 = 'component1:Muscle';
component2 = 'component1:Minus1';
CstSubtract(mws,component1,component2)
component1 = 'component1:Muscle';
component2 = 'component1:Minus2';
CstSubtract(mws,component1,component2)

material = 'Copper (annealed)';
Name = 'Conductor1';
OuterRadius = 1;
InnerRadius = 0;
Xcenter = -30;
Ycenter = 0;
Zrange = [-30 30];
Cstcylinder(mws, Name, ComponentList, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'Conductor2';
OuterRadius = 1;
InnerRadius = 0;
Xcenter = 50;
Ycenter = 0;
Zrange = [-30 30];
Cstcylinder(mws, Name, ComponentList, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'Gap1';
OuterRadius = 1;
InnerRadius = 0;
Xcenter = -30;
Ycenter = 0;
Zrange = [-5 5];
Cstcylinder(mws, Name, ComponentList, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'Gap2';
OuterRadius = 1;
InnerRadius = 0;
Xcenter = 50;
Ycenter = 0;
Zrange = [-5 5];
Cstcylinder(mws, Name, ComponentList, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

position = 1;
CstPickEdge(mws,'Gap1',position)

position = 2;
CstPickEdge(mws,'Gap1',position)

PortNumber = 1;
SetP1 = [-29 0 -5];
SetP2 = [-29 0 5];
CstDiscreteFacePort(mws,PortNumber,SetP1,SetP2)

position = 1;
CstPickEdge(mws,'Gap2',position)

position = 2;
CstPickEdge(mws,'Gap2',position)

PortNumber = 2;
SetP1 = [51 0 -5];
SetP2 = [51 0 5];
CstDiscreteFacePort(mws,PortNumber,SetP1,SetP2)
CstTeflonPTFElossy(mws)

Name = 'Coat1';
component = 'component1';
material = 'Teflon (PTFE) (lossy)';
OuterRadius = 2;
InnerRadius = 1;
Xcenter = -30;
Ycenter = 0;
Zrange = [-30 30];
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)


Name = 'Coat2';
Xcenter = 50;
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'CoatCap1a';
component = 'component1';
material = 'Teflon (PTFE) (lossy)';
OuterRadius = 2;
InnerRadius = 0;
Xcenter = -30;
Ycenter = 0;
Zrange = [-31 -30];
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)


Name = 'CoatCap1b';
OuterRadius = 2;
InnerRadius = 0;
Xcenter = -30;
Ycenter = 0;
Zrange = [30 31];
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

Name = 'CoatCap2a';
component = 'component1';
material = 'Teflon (PTFE) (lossy)';
OuterRadius = 2;
InnerRadius = 0;
Xcenter = 50;
Ycenter = 0;
Zrange = [-31 -30];
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)


Name = 'CoatCap2b';
OuterRadius = 2;
InnerRadius = 0;
Xcenter = 50;
Ycenter = 0;
Zrange = [30 31];
Cstcylinder(mws, Name, component, material, 'Z', OuterRadius, InnerRadius, Xcenter, Ycenter, Zrange)

component1 = 'component1:Coat1';
component2 = 'component1:CoatCap1a';
CstAdd(mws,component1,component2)

component1 = 'component1:Coat1';
component2 = 'component1:CoatCap1b';
CstAdd(mws,component1,component2)

component1 = 'component1:Coat2';
component2 = 'component1:CoatCap2a';
CstAdd(mws,component1,component2)

component1 = 'component1:Coat2';
component2 = 'component1:CoatCap2b';
CstAdd(mws,component1,component2)


CstDefineFrequencyRange(mws,0.5,4)

for monitorindex = 0.5:0.5:4 
CstDefineEfieldMonitor(mws,strcat('e-field', num2str(monitorindex)), monitorindex)
CstDefineHfieldMonitor(mws,strcat('h-field', num2str(monitorindex)), monitorindex)
CstDefineFarfieldMonitor(mws,strcat('Farfield',num2str(monitorindex)), monitorindex)
end


CstSaveProject(mws) 
CstDefineTimedomainSolver(mws,-30)


exportpath = '...\cst api\NameofyourFile'; %NameofyourFile should be the same with the name of the file of line 218 bellow
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

StepTheta = 0.25;
StepPhi = 0.25;
matrixindex = 1;

for monitorindex = 0.5:0.5:4 
port = 1;
exportpath = strcat('...\cstapitest\farff1',num2str(monitorindex),'.txt');
CstExportFarfieldSourceAngleStep(mws,exportpath,monitorindex,port,StepTheta,StepPhi)
port = 2;
exportpath = strcat('...\cstapitest\farff2',num2str(monitorindex),'.txt');
CstExportFarfieldSourceAngleStep(mws,exportpath,monitorindex,port,StepTheta,StepPhi)
end
