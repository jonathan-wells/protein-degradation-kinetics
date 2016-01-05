#!/usr/bin/env julia

function load_data2(filename)
    infile = open(filename)
    data = readlines(infile)
    close(infile)
    header = split(strip(data[1]), [','])
    data = [split(strip(line), [',']) for line in data[2:end]]
    return header, data
end



heinfile = "../../ixntools/human/hein/hein.csv"
nedfile = "../../halflife/halflife/data/NED_human.txt"
header, data = load_data2(heinfile)
println(header)
println(data[1][2])
# println(nedhead)