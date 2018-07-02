%% kinectadapter and devices
info = imaqhwinfo('kinect')
%%
a=arduino()
%% create video input object for color stream
info.DeviceInfo(1)
colorVid=videoinput('kinect',1,'RGB_640x480');
colorImage=getsnapshot(colorVid);
h = image(colorImage);
imsave(h);
%% videoinput object for depth stream
info.DeviceInfo(2)
depthVid=videoinput('kinect',2,'Depth_640x480');
depthImage=getsnapshot(depthVid);
h=imtool(depthImage, [0 4000]);
imsave(h);
%% RANSAC
imgArgb = im2single(imread('c:\Users')
%%
imgArgb_resized=imsize9imgArgb,0.25);
imA=rgb2gray(imArgb_resized)
%%
h1=figure;
set(h1,'position',[200,533,1064,348]);
subplot(1,2,1);
imshow(imgArgb_resized);
title('LEFT Image')
%% detect salient features (SURF - speeded up robost features)
h2 = figure;
set(h2,'number Title','OFF','position',[478 695 564 386]);
set(h2,'Name','SURF Detection');