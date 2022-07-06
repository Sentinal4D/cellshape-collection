function [Stats] = getStats(mask,volume)
    Stats = regionprops3(bwconncomp(mask), volume,'Volume', 'Centroid', ...
        'VoxelIdxList','EquivDiameter', 'BoundingBox', 'Extent','SubarrayIdx', ...
        'EigenVectors', 'MaxIntensity', 'MeanIntensity', 'MinIntensity',...
        'Orientation', 'PrincipalAxisLength', 'Solidity', 'SurfaceArea');
end