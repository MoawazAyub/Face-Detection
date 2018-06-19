count = 1;

for i=1:1:105

c = strcat(int2str(i),'.jpg');




%-----------------------------------------code for concatination
ci = imread(c);

[q,w,e] = size(ci);

Crop=im2uint8(zeros(q - 6,w - 6,3));
Crop(:,:,1) = ci(4:q-3,4:w-3,1);
Crop(:,:,2) = ci(4:q-3,4:w-3,2);
Crop(:,:,3) = ci(4:q-3,4:w-3,3);
%imshow(Crop);


%imshow(c);

%----------------------------------------------------------------




apprpriatesize = imresize(Crop,[200 200]);

imwrite(apprpriatesize,c);

%pause(2);

end

%-------------------------------------------------------------------


for i=1:1:15

c = strcat(int2str(i),'a','.jpg');




%-----------------------------------------code for concatination
ci = imread(c);

[q,w,e] = size(ci);

Crop=im2uint8(zeros(q - 6,w - 6,3));
Crop(:,:,1) = ci(4:q-3,4:w-3,1);
Crop(:,:,2) = ci(4:q-3,4:w-3,2);
Crop(:,:,3) = ci(4:q-3,4:w-3,3);
%imshow(Crop);


%imshow(c);

%----------------------------------------------------------------




apprpriatesize = imresize(Crop,[200 200]);

imwrite(apprpriatesize,c);

%pause(2);

end

