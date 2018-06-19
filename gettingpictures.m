X= videoinput('winvideo',1);
preview(X);
j = 1;
for i =1:50
pause(1);
img = getsnapshot(X);
imshow(img);



FDetect = vision.CascadeObjectDetector;



%Returns Bounding Box values based on number of objects
BB = step(FDetect,img);


RGB = insertShape(img, 'rectangle', BB(1,:), 'LineWidth', 5);


for i = 1:1
 J= imcrop(RGB,BB(1,:));
   
 end
 y='io';
 for k= 1:j;
 y = strcat(y,'a');
 end
y=strcat(y,'.jpg');
imwrite(J,y);

j = j+1;

end