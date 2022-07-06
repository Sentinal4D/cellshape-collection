function [volume] = loadSingleCellCroppedVolume(croppedVolumePath, singleCell, iChannel)
    listImages = dir([croppedVolumePath...
        '\run_' num2str(singleCell.runNumber, '%04d') '*' ...
        '_channel_' num2str(iChannel, '%04d') '.tif']);
    volume = readTiffStack(listImages);
end