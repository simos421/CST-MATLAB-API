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

function CstExportFarfieldSourceAngleStep(mws,exportpath, frequency,port,StepTheta,StepPhi)

FarfieldPlot = invoke(mws,'FarfieldPlot');
invoke(FarfieldPlot,'Plottype','3D');
invoke(FarfieldPlot,'Vary','angle1');
invoke(FarfieldPlot,'Theta','90');
invoke(FarfieldPlot,'Phi','90');
invoke(FarfieldPlot,'Step',num2str(StepTheta));
invoke(FarfieldPlot,'Step2',num2str(StepPhi));
invoke(FarfieldPlot,'SetLockSteps','False');
invoke(FarfieldPlot,'SetPlotRangeOnly','False');
invoke(FarfieldPlot,'SetThetaStart','0');
invoke(FarfieldPlot,'SetThetaEnd','180');
invoke(FarfieldPlot,'SetPhiStart','0');
invoke(FarfieldPlot,'SetPhiEnd','360');
invoke(FarfieldPlot,'SetTheta360','False');
invoke(FarfieldPlot,'SymmetricRange','False');
invoke(FarfieldPlot,'SetTimeDomainFF','False');
invoke(FarfieldPlot,'SetFrequency',num2str(frequency));
invoke(FarfieldPlot,'SetTime','0');
invoke(FarfieldPlot,'SetColorByValue','True');    
invoke(FarfieldPlot,'DrawStepLines','False');
invoke(FarfieldPlot,'DrawIsoLongitudeLatitudeLines','False');    
invoke(FarfieldPlot,'ShowStructure','False');  
invoke(FarfieldPlot,'SetStructureTransparent','False');
invoke(FarfieldPlot,'SetFarfieldTransparent','False');   
invoke(FarfieldPlot,'SetSpecials','enablepolarextralines');  
invoke(FarfieldPlot,'SetPlotMode','Efield');
invoke(FarfieldPlot,'Distance','1');  
invoke(FarfieldPlot,'UseFarfieldApproximation','True');
invoke(FarfieldPlot,'SetScaleLinear','True');
invoke(FarfieldPlot,'SetLogRange','40');
invoke(FarfieldPlot,'SetLogNorm','0');
invoke(FarfieldPlot,'DBUnit','0');
invoke(FarfieldPlot,'EnableFixPlotMaximum','False');     
invoke(FarfieldPlot,'SetFixPlotMaximumValue','1'); 
invoke(FarfieldPlot,'SetInverseAxialRatio','False');
invoke(FarfieldPlot,'SetAxesType','user');
invoke(FarfieldPlot,'SetAntennaType','unknown');
invoke(FarfieldPlot,'Phistart','1.000000e+000','0.000000e+000','0.000000e+000');  
invoke(FarfieldPlot,'Thetastart','0.000000e+000','0.000000e+000','1.000000e+000');
invoke(FarfieldPlot,'PolarizationVector','0.000000e+000','1.000000e+000','0.000000e+000');
invoke(FarfieldPlot,'SetCoordinateSystemType','spherical');    
invoke(FarfieldPlot,'SetAutomaticCoordinateSystem','True');    
invoke(FarfieldPlot,'SetPolarizationType','Linear');
invoke(FarfieldPlot,'SlantAngle', '0.000000e+000');


invoke(FarfieldPlot,'Origin','bbox');

invoke(FarfieldPlot,'Userorigin','0.000000e+000','0.000000e+000','0.000000e+000');
invoke(FarfieldPlot,'SetUserDecouplingPlane','False');
invoke(FarfieldPlot,'UseDecouplingPlane','False'); 
invoke(FarfieldPlot,'DecouplingPlaneAxis','X');
invoke(FarfieldPlot,'DecouplingPlanePosition','0.000000e+000');
invoke(FarfieldPlot,'LossyGround','False');  
invoke(FarfieldPlot,'GroundEpsilon','1'); 
invoke(FarfieldPlot,'GroundKappa','0');
invoke(FarfieldPlot,'EnablePhaseCenterCalculation','False');
invoke(FarfieldPlot,'SetPhaseCenterAngularLimit','3.000000e+001'); 
invoke(FarfieldPlot,'SetPhaseCenterComponent','boresight'); 
invoke(FarfieldPlot,'SetPhaseCenterPlane','both');
invoke(FarfieldPlot,'ShowPhaseCenter','True');
invoke(FarfieldPlot,'StoreSettings');
SelectTreeItem = invoke(mws,'SelectTreeItem',char(strcat('Farfields\Farfield',num2str(frequency),strcat({' '}, strcat('[',num2str(port),']'))))); 
invoke(FarfieldPlot,'ASCIIExportAsSource', exportpath);
end
     
 