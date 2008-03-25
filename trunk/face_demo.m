%clear all;
close all;
tic
% gmmreg_tps_mex('./face.ini')
 if ispc
   !gmmreg_tps ./face.ini
 else
   !./linux-x86_64/gmmreg_tps ./face.ini
 end
toc
M  = load('./face_data/face_X.txt');
S  = load('./face_data/face_Y.txt');
Transformed_M = load('./output/transformed_model.txt');
subplot(1,2,1); DisplayPoints3D(M,S);
subplot(1,2,2); DisplayPoints3D(Transformed_M,S);
