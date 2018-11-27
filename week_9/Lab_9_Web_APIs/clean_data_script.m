clc,clear


one_col_tbl = data(:,3)
one_col_cell = table2array(one_col_tbl)
data_mat_str = cell2mat(one_col_cell)
data_flt_mat=[]
[row_num, col_num] = size(data_mat_str)
for i = 1:row_num
    row = data_mat_str(i,:)
    data_str = row(13:end)
    data_flt = str2num(data_str)
    data_flt_mat(end+1)= data_flt
end