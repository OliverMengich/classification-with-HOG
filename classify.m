
%%
%%
[image1,info] = readimage(carTest,901);
image1 = imresize(image1,[300 300]);
imagebin=rgb2gray(image1);
[hogfeat,visfeat] = extractHOGFeatures(image1,'CellSize',[10 10]);
imshow(image1); hold on; plot(visfeat)
%%
label = predict(categoryClassifier,imagebin);
categoryClassifier.Labels(label)

%%
  imshow(imagebin); hold on; plot(vis)
%%
 trainingFeatures = zeros(numel(training.Files),length(h),'single');
 for i=1:numel(carimds1.Files)
     xy = readimage(carimds,i);
     %xy = imresize(xy,[400 400])
     [x,y,z] = size(xy);
     imbin = imbinarize(rgb2gray(q),'adaptive');
     trainingFeatures(i,:)=extractHOGFeatures(imbin,'CellSize',[6 6]);
 end
          
     
 
 %%
 trainingLabels = carimds1.Labels;
 %%
 classifier = fitcecoc(trainingFeatures,trainingLabels);
 
 
 %%
 [queryimage,info] = readimage(carTest,66);
imshow(queryimage)
queryimage = imresize(queryimage,[300 300]);
queryFeatures = extractHOGFeatures(queryimage,'CellSize',[10 10]);
label = predict(classifier,queryFeatures);c
label
info
 