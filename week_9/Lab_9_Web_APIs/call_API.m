function [ data_tbl ] = call_API( N, w_type )

url = sprintf('https://api.thingspeak.com/channels/12397/fields/%d.csv?results=%d', w_type, N)
data_tbl = webread(url)

end

