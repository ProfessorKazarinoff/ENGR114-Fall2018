function [ data_mat ] = clean_data(data_tbl)

one_col_tbl = data_tbl(:,3)
one_col_cell = table2array(one_col_tbl)
data_mat_str = cell2mat(one_col_cell)
[row_num, col_num] = size(data_mat_str)

data_mat=[]
for i = 1:row_num
    row = data_mat_str(i,:)
    data_str = row(13:end)
    data_flt = str2num(data_str)
    data_mat(end+1)= data_flt
end %end for loop

end %end funcion
