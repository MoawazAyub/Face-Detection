featurematrix = zeros(105,20736);

recognize = zeros(15,20736);

for i=1:1:105

c = strcat(int2str(i),'.jpg');
img = imread(c);
x = extractHOGFeatures(img);



featurematrix(i,:) = x;


end


for i=1:1:15

c = strcat(int2str(i),'a','.jpg');
img = imread(c);
x = extractHOGFeatures(img);



recognize(i,:) = x;


end

%-------------------------------------------------------------
response = zeros(1,105);

for i=36:1:70

response(i) = 1;

end

for i=71:1:105

response(i) = 2;

end

mdl = fitcecoc(featurematrix,response');
group = predict(mdl,recognize);


%------------------------------------------------------------------------------------code for box
for i=1:1:15

if group(i)==0
p = 'MOAWAZ'

%----------------------------------------------------------11

c = strcat(int2str(i),'a','.jpg');

x = imread(c);

detector = vision.CascadeObjectDetector;
bbox = step (detector,x);
size(bbox);
[A,B] = size(bbox);
if A == 1
bbox(1) = bbox(1)-5;
bbox(2) = bbox(2)-5;
bbox(3) = bbox(3)-5;
bbox(4) = bbox(4)-5;
end


out = insertObjectAnnotation(x,'rectangle',bbox,'MOAWAZ');

imshow(out);
pause(3);
%---------------------------------------------------------11

end

if group(i)==1
p = 'MOAZZAM'


%----------------------------------------------------------11

c = strcat(int2str(i),'a','.jpg');

x = imread(c);

detector = vision.CascadeObjectDetector;
bbox = step (detector,x);
size(bbox);
[A,B] = size(bbox);
if A == 1
bbox(1) = bbox(1)-5;
bbox(2) = bbox(2)-5;
bbox(3) = bbox(3)-5;
bbox(4) = bbox(4)-5;
end


out = insertObjectAnnotation(x,'rectangle',bbox,'MOAZZAM');

imshow(out);
pause(3);
%---------------------------------------------------------11


end

if group(i)==2
p = 'IBRAHIM'


%----------------------------------------------------------11

c = strcat(int2str(i),'a','.jpg');

x = imread(c);

detector = vision.CascadeObjectDetector;
bbox = step (detector,x);
size(bbox);
[A,B] = size(bbox);
if A == 1
bbox(1) = bbox(1)-5;
bbox(2) = bbox(2)-5;
bbox(3) = bbox(3)-5;
bbox(4) = bbox(4)-5;
end


out = insertObjectAnnotation(x,'rectangle',bbox,'IBRAHIM');

imshow(out);
pause(3);
%---------------------------------------------------------11

end

end