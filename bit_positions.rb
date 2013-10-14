#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	
file = File.new(file_name)

while(line = file.gets)
	digits = line.split(",")
	x = digits[0].to_i
	y = digits[1].to_i
	z = digits[2].to_i

	binr = x.to_s(2).reverse

	if binr[y-1] == binr[z-1]
		puts "true"
	else
		puts "false"	
	end


end