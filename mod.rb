#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	
file = File.new(file_name)

while(line = file.gets)
	digits = line.split(",")
	x = digits[0].to_i
	z = digits[1].to_i
	mod = x-((x/z)*z) 
	puts mod
end