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

addpath('...\Home');
addpath('...\Materials');
addpath('...\Modeling');
addpath('...\PostProcessing');
addpath('...\Simulation');
addpath('...\cst api');
addpath('..\cstapitest');

cst = actxserver('CSTStudio.application');
mws = cst.invoke('NewMWS');

CstDefaultUnits(mws)
ComponentList = 'component1';
CstDefineFrequencyRange(mws,1.5,3.5)
CstMeshInitiator(mws)

minfrequency = 1.5;
x='expanded open';
CstDefineOpenBoundary(mws,minfrequency,x,x,x,x,x,x)
XminSpace = 0;
XmaxSpace = 0;
YminSpace = 0;
YmaxSpace = 0;
ZminSpace = 0;
ZmaxSpace = 0;
CstDefineBackroundMaterial(mws,XminSpace,XmaxSpace, YminSpace, YmaxSpace, ZminSpace, ZmaxSpace)

CstCopperAnnealedLossy(mws)
CstFR4lossy(mws)

W = 28.45;
L = 28.45;
Fi = 9;
Wf = 1.137;
Gpf = 1;
Lg = 2*L;
Wg = 2*W;
Ht = 0.035;
Hs = 1.6;

Name = 'Groundplane';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-0.5*Wg 0.5*Wg];
Yrange = [-0.5*Lg 0.5*Lg];
Zrange = [0 Ht];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Substrate';
component = 'component1';
material = 'FR-4 (lossy)';
Xrange = [-0.5*Wg 0.5*Wg];
Yrange = [-0.5*Lg 0.5*Lg];
Zrange = [Ht Ht+Hs];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Patch';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-W/2 W/2];
Yrange = [-L/2 L/2];
Zrange = [Ht+Hs Ht+Hs+Ht];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)


Name = 'Empty space';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-((Wf/2)+Gpf)  ((Wf/2)+Gpf)];
Yrange = [-L/2+Fi -L/2];
Zrange = [Ht+Hs Ht+Hs+Ht];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

component1 = 'component1:Patch';
component2 = 'component1:Empty space';
CstSubtract(mws,component1,component2)

Name = 'FeedLine';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-Wf/2 Wf/2];
Yrange = [-L/2+Fi -Lg/2];
Zrange = [Ht+Hs Ht+Hs+Ht];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

component1 = 'component1:Patch';
component2 = 'component1:FeedLine';
CstAdd(mws,component1,component2)

Name = 'Substrate';
id = 3;
CstPickFace(mws,Name,id)


PortNumber = 1;
Xrange = [-36 36];
Yrange = [-36 -36];
Zrange = [0.035 1.635];
XrangeAdd =[3*Wf 3*Wf];
YrangeAdd =[0 0];
ZrangeAdd =[Ht+Hs 4*Hs];
Coordinates = 'Picks';
Orientation = 'positive';
CstWaveguidePort(mws,PortNumber, Xrange, Yrange, Zrange, XrangeAdd, YrangeAdd, ZrangeAdd,Coordinates,Orientation)

for monitorindex = 1.5:0.5:3.5 
CstDefineEfieldMonitor(mws,strcat('e-field', num2str(monitorindex)), monitorindex)
CstDefineHfieldMonitor(mws,strcat('h-field', num2str(monitorindex)), monitorindex)
CstDefineFarfieldMonitor(mws,strcat('Farfield',num2str(monitorindex)), monitorindex)
end


CstSaveProject(mws) 
CstDefineTimedomainSolver(mws,-40)

exportpath = '...\cst api\NameofyourFile';%NameofyourFile should be the same with the name of the file of line 133 bellow

format = 'db';

CstExportTouchstone(mws,exportpath, format)
data = read(rfdata.data,'NameofyourFile.s1p');
freq = data.Freq;
s_params = extract(data,'S_PARAMETERS',50);
spar = s_params(1,:);
s11 = 20*log10(sqrt(real(spar).^2 + imag(spar).^2));
plot(freq,s11); grid on; 





