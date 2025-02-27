function AX=modeling_func_of_tri_trans2(data)

%地图高程信息表转为矩阵

% 计算 AX 的大小
max_x = max(data(:, 1));
max_y = max(data(:, 2));
AX = zeros(max_x , max_y );

% 遍历 BX 并将值放入 AX
for i = 1:size(data, 1)
    x = data(i, 1) ;
    y = data(i, 2) ;
    value = data(i, 3);
    AX(x, y) = value;
end

end