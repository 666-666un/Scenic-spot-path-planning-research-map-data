clc   
clear


%%Importing map data%%
data1=readmatrix('mapofpaper.csv');
AX=modeling_func_of_tri_trans2(data1);%Map information is converted into corresponding matrix




%%Obstacle data import and establishment%%
data2=readmatrix('mapofpaper01.csv');
BX=modeling_func_of_tri_trans2(data2);%Map information is converted into corresponding matrix
data_road=modeling_findZero(BX);%Get reachable coordinates
data_raod3=modeling_get_the3columnvalue_specified_coodinate(AX,data_road);%Get the 3D coordinates of reachable coordinates

