function [index, segmentedImg, centers, J] = segment(img, k, initialMethod)
    img = im2double(img);
    image = reshape(img,size(img,1)*size(img,2),[]);
    fid=fopen('temp', 'w');
    fclose('all');
    diary temp;
    [index,centers,sumd,D] = kmeans(image, k, 'start', initialMethod, 'MaxIter', 10000, 'Display', 'iter');
    diary off;
    fid=fopen('temp', 'r');
    dat=textscan(fid,'%s');
    fclose(fid);
    delete temp
    segmentedImg = centers(index,:);
    segmentedImg = reshape(segmentedImg,size(img,1),size(img,2),[]);
    alldist = min(D');
    J = alldist*alldist';
end