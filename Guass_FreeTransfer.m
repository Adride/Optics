function Guass_FreeTransfer
% 高斯光自由空间传播
% copyright @adride  qq:466193203
% $date 2018-3-2$ $version 2.0$
% $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

clc;close all;
%% UnitTable
mm=1*10^-3;
um=1*10^-6;
nm=1*10^-9;
mw=1*10^-3;
ns=1*10^-9;
MHz=1*10^6;
GHz=1*10^9;
%% Beam para
z=0;
pix=2*um;
N=600;
%%
disp('Free Transfer');
w0=160*um;
[wx,wy]=selection
clc;
disp([num2str(wx/um),'um']);
disp([num2str(wy/um),'um']);
wy/wx*100
% [SIs,phase]=getHGmode_F(w0/mm,z/mm,N,pix/mm,'00');
% [Is,phase]=getHGmode_F(wx/mm,z/mm,N,pix/mm,'00','wy',wy/mm);
% figure,
% subplot(1,2,1),imshow(SIs,[]),title(['理想,w=',num2str(w0/um),'um']);
% subplot(1,2,2),imshow(Is,[]),title(['测试结果,w=',num2str(wx/um),'um']);

function [wx,wy]=selection
mm=1*10^-3;
um=1*10^-6;
disp('高斯腰斑设定:');
wx=input('x方向腰斑大小(um)=')*um;
wait=input('是否传输变换?');
if wait
    z=input('腰斑位移(mm)=')*mm;
    [wx,~]=getGaussParaByFreePpg_F('Waist',wx,'Distance',z);
end
wy=input('y方向腰斑大小(um)=')*um;
wait=input('是否传输变换?');
if wait
    z=input('腰斑位移(mm)=')*mm;
    [wy,~]=getGaussParaByFreePpg_F('Waist',wy,'Distance',z);
end