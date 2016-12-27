%This is an example about feature fusion for HTK.
loadPathA = '';
loadPathB = '';
savePath = '';

dataFilesA = dir(fullfile(loadPathA,'*.'));
dataFilesB = dir(fullfile(loadPathB,'*.'));
for k = 1:length(dataFilesA)
    dataFileA = dataFilesA(k).name;
	featureA = load([loadPathA,dataFileA]);
	
    dataFileB = dataFilesB(k).name;
	featureB = load([loadPathB,dataFileB]);
	
	featureFusion = cat(2,featureA,featureB);
    writehtk([savePath,dataFileA],featureFusion,fp,9)%保存为htk格式的MFCC文件
end