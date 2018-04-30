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


CstCopperPureLossy(mws)
CstFR4lossy(mws)

g = 3; %gap
h = 2.5; %substrate height
l1 = 22; %outer ring width
l2 = 15; %inner ring width
ls = 25; %substrate length
lw = 1.4; %wire width
s = 1.5; %split width
t = 0.17; %thickness
w = 2; %ring width

Name = 'Substrate';
component = 'component1';
material = 'FR-4 (lossy)';
Xrange = [-ls/2 ls/2];
Yrange = [-ls/2 ls/2];
Zrange = [-h 0];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Ring1';
component = 'component1';
material = 'Copper (pure)';
Xrange = [-l1/2 l1/2];
Yrange = [-l1/2 l1/2];
Zrange = [0 t];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Cut1';
component = 'component1';
material = 'Copper (pure)';
Xrange = [-(l1/2)+w (l1/2)-w];
Yrange = [-(l1/2)+w (l1/2)-w];
Zrange = [0 t];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

component1 = 'component1:Ring1';
component2 = 'component1:Cut1';
CstSubtract(mws,component1,component2)

Name = 'Ring1';
id = 12;
CstPickMidPoint(mws,Name,id)
CstAlignWCSwithPoint(mws)

Name = 'Cut2';
component = 'component1';
material = 'Copper (pure)';
Xrange = [-g/2 g/2];
Yrange = [0 w];
Zrange = [0 t];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

component1 = 'component1:Ring1';
component2 = 'component1:Cut2';
CstSubtract(mws,component1,component2)

SetNormal = [0 0 1];
SetOrigin = [0 0 0];
SetUVector = [1 0 0];

CstActivateLocalWCS(mws, SetNormal, SetOrigin, SetUVector, 0)

Name = 'Ring2';
component = 'component1';
material = 'Copper (pure)';
Xrange = [-(l1/2)+w+s (l1/2)-w-s];
Yrange = [-(l1/2)+w+s (l1/2)-w-s];
Zrange = [0 t];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Cut3';
component = 'component1';
material = 'Copper (pure)';
Xrange = [-(l1/2)+2*w+s (l1/2)-2*w-s];
Yrange = [-(l1/2)+2*w+s (l1/2)-2*w-s];
Zrange = [0 t];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

component1 = 'component1:Ring2';
component2 = 'component1:Cut3';
CstSubtract(mws,component1,component2)

Name = 'Ring2';
id = 10;
CstPickMidPoint(mws,Name,id)
CstAlignWCSwithPoint(mws)

Name = 'Cut4';
component = 'component1';
material = 'Copper (pure)';
Xrange = [-g/2 g/2];
Yrange = [0 -w];
Zrange = [0 t];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

component1 = 'component1:Ring2';
component2 = 'component1:Cut4';
CstSubtract(mws,component1,component2)


CstActivateLocalWCS(mws, SetNormal, SetOrigin, SetUVector, 0)

Name = 'Substrate';
id = 2;
CstPickFace(mws,Name,id)
CstAlignWCSwithFace(mws)

Name = 'Wire';
component = 'component1';
material = 'Copper (pure)';
Xrange = [-(lw/2) (lw/2)];
Yrange = [-(ls/2) (ls/2)];
Zrange = [0 t];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
CstActivateLocalWCS(mws, SetNormal, SetOrigin, SetUVector, 0)
CstDefineFrequencyRange(mws,7,13)
CstMeshInitiator(mws)
minfrequency = 7;

XminSpace = 0;
XmaxSpace = 0;
YminSpace = 0;
YmaxSpace = 0;
ZminSpace = ls/2;
ZmaxSpace = ls/2;
CstDefineBackroundMaterial(mws,XminSpace,XmaxSpace, YminSpace, YmaxSpace, ZminSpace, ZmaxSpace)

Xmin = 'open';
Xmax = 'electric';
Ymin = 'electric';
Ymax = 'electric';
Zmin = 'magnetic';
Zmax = 'magnetic';
CstDefineOpenBoundary(mws,minfrequency,Xmin,Xmax,Ymin,Ymax,Zmin,Zmax)


PortNumber = 1;
Xrange = [-13 -13];
Yrange = [-13 13];
Zrange = [-3 0];
XrangeAdd = [0 0];
YrangeAdd = [0 0];
ZrangeAdd = [0 0];
CstWaveguidePort(mws,PortNumber, Xrange, Yrange, Zrange, XrangeAdd, YrangeAdd, ZrangeAdd, 'Full','xmin')

PortNumber = 2;
Xrange = [13 13];
Yrange = [-13 13];
Zrange = [-3 0];
XrangeAdd = [0 0];
YrangeAdd = [0 0];
ZrangeAdd = [0 0];
CstWaveguidePort(mws,PortNumber, Xrange, Yrange, Zrange, XrangeAdd, YrangeAdd, ZrangeAdd, 'Full','xmax')


CstSaveProject(mws) 
CstDefineTimedomainSolver(mws,-40)



