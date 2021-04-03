function main2()
    showSegments('lena_color_256.tif');
    showSegments('lena_color_512.tif');
    showSegments('mandril_color.tif');
    %showSegments('peppers_color.tif');
end

function showSegments(path)
    img = imread(path);
    figure;
    n = 1;
    for i=3:2:7
        [index, segmentedImg, centers, J] = segment(img, i, 'sample');
        fprintf('Error for %d center is %f\n', i, J);
        subplot(1,3,n);
        imshow(segmentedImg);
        n = n+1;
    end
end