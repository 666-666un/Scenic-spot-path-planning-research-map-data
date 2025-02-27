function CX=modeling_get_the3columnvalue_specified_coodinate(AX,BX)

%该函数根据给定坐标集BX从矩阵 AX 中提取指定位置的元素，并将结果与对应的坐标一起存储到新矩阵 CX 中

% 获取BX中的行数
n = size(BX, 1);

% 初始化CX矩阵
CX = zeros(n, 3);

% 遍历BX中的每一行
for i = 1:n
    x = BX(i, 1); % BX中的横坐标
    y = BX(i, 2); % BX中的纵坐标

    CX(i, 1) = x; % 存储横坐标
    CX(i, 2) = y; % 存储纵坐标
    CX(i, 3) = AX(x, y); % 从AX中提取对应坐标的元素并存储

end


end