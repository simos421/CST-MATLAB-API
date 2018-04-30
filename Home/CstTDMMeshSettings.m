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

function CstTDMMeshSettings(mws, CellsPerWavelenth, MinimumCell)

%'@ set mesh properties (Hexahedral)
Mesh = invoke(mws,'Mesh');
invoke(Mesh,'MeshType','PBA');
invoke(Mesh,'SetCreator','High Frequency');

MeshSettings = invoke(mws,'MeshSettings');
invoke(MeshSettings,'SetMeshType','Hex');
invoke(MeshSettings,'Set','Version','1%');


%'MAX CELL - WAVELENGTH REFINEMENT 
invoke(MeshSettings,'Set','StepsPerWaveNear',num2str(CellsPerWavelenth));
invoke(MeshSettings,'Set','StepsPerWaveFar',num2str(CellsPerWavelenth));
invoke(MeshSettings,'Set','WavelengthRefinementSameAsNear','1');
%'MAX CELL - GEOMETRY REFINEMENT 
invoke(MeshSettings,'Set','StepsPerBoxNear',num2str(CellsPerWavelenth));
invoke(MeshSettings,'Set','StepsPerBoxFar',num2str(CellsPerWavelenth));
invoke(MeshSettings,'Set','MaxStepNear',num2str(CellsPerWavelenth));
invoke(MeshSettings,'Set','MaxStepFar',num2str(CellsPerWavelenth));
invoke(MeshSettings,'Set','ModelBoxDescrNear','maxedge');
invoke(MeshSettings,'Set','ModelBoxDescrFar','maxedge');
invoke(MeshSettings,'Set','UseMaxStepAbsolute','0');
invoke(MeshSettings,'Set','GeometryRefinementSameAsNear','1');
%'MIN CELL 
invoke(MeshSettings,'Set','UseRatioLimitGeometry','1');
invoke(MeshSettings,'Set','RatioLimitGeometry',num2str(MinimumCell));
invoke(MeshSettings,'Set','MinStepGeometryX','0');
invoke(MeshSettings,'Set','MinStepGeometryY','0');
invoke(MeshSettings,'Set','MinStepGeometryZ','0');
invoke(MeshSettings,'Set','UseSameMinStepGeometryXYZ','1');

MeshSettings = invoke(mws,'MeshSettings');
invoke(MeshSettings,'SetMeshType','Hex');
invoke(MeshSettings,'Set','FaceRefinementOn','0');
invoke(MeshSettings,'Set','FaceRefinementPolicy','2');
invoke(MeshSettings,'Set','FaceRefinementRatio','2');
invoke(MeshSettings,'Set','FaceRefinementStep','0');
invoke(MeshSettings,'Set','FaceRefinementNSteps','2');
invoke(MeshSettings,'Set','EllipseRefinementOn','0');
invoke(MeshSettings,'Set','EllipseRefinementPolicy','2');
invoke(MeshSettings,'Set','EllipseRefinementRatio','2');
invoke(MeshSettings,'Set','EllipseRefinementStep','0');
invoke(MeshSettings,'Set','EllipseRefinementNSteps','2');
invoke(MeshSettings,'Set','FaceRefinementBufferLines','3');
invoke(MeshSettings,'Set','EdgeRefinementOn','1');
invoke(MeshSettings,'Set','EdgeRefinementPolicy','1');
invoke(MeshSettings,'Set','EdgeRefinementRatio','2');
invoke(MeshSettings,'Set','EdgeRefinementStep','0');
invoke(MeshSettings,'Set','EdgeRefinementBufferLines','3');
invoke(MeshSettings,'Set','RefineEdgeMaterialGlobal','0');
invoke(MeshSettings,'Set','RefineAxialEdgeGlobal','0');
invoke(MeshSettings,'Set','BufferLinesNear','3');
invoke(MeshSettings,'Set','UseDielectrics','1');
invoke(MeshSettings,'Set','EquilibrateOn','0');
invoke(MeshSettings,'Set','Equilibrate','1.5');
invoke(MeshSettings,'Set','IgnoreThinPanelMaterial','0');

MeshSettings = invoke(mws,'MeshSettings');
invoke(MeshSettings,'SetMeshType','Hex');
invoke(MeshSettings,'Set','SnapToAxialEdges','1');
invoke(MeshSettings,'Set','SnapToPlanes','1');
invoke(MeshSettings,'Set','SnapToSpheres','1');
invoke(MeshSettings,'Set','SnapToEllipses','1');
invoke(MeshSettings,'Set','SnapToCylinders','1');
invoke(MeshSettings,'Set','SnapToCylinderCenters','1');
invoke(MeshSettings,'Set','SnapToEllipseCenters','1');


Discretizer = invoke(mws,'Discretizer');
invoke(Discretizer,'MeshType','PBA');
invoke(Discretizer,'PBAType','Fast PBA');
invoke(Discretizer,'AutomaticPBAType','True');
invoke(Discretizer,'FPBAAccuracyEnhancement','enable');
invoke(Discretizer,'ConnectivityCheck','False');
invoke(Discretizer,'ConvertGeometryDataAfterMeshing','True');
invoke(Discretizer,'UsePecEdgeModel','True');
invoke(Discretizer,'GapDetection','False');
invoke(Discretizer,'FPBAGapTolerance','1e-3');
invoke(Discretizer,'SetMaxParallelMesherThreads','Hex','12');
invoke(Discretizer,'SetParallelMesherMode','Hex','Maximum');
invoke(Discretizer,'PointAccEnhancement','0');
invoke(Discretizer,'UseSplitComponents','True');
invoke(Discretizer,'EnableSubgridding','False');
invoke(Discretizer,'PBAFillLimit','99');
invoke(Discretizer,'AlwaysExcludePec','False');
end


    
