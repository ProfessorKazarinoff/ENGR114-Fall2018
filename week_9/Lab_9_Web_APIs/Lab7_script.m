%% Lab 7 script that calls all four functions

clc,clear, close all

%%
[N, w_type]=user_input()

data_tbl = call_API(N, w_type)

data_mat = clean_data(data_tbl)

plot_data(data_mat)