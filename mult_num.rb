#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end

file = File.new(file_name)

while(line = file.gets)
	digits = line.split(",")
	x = digits[0].to_i
	n = digits[1].to_i
	n_2 = n

	while(x  > n_2)
		n_2 = n_2 + n
	end	

	puts n_2
end
