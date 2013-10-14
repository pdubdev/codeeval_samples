#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	
file = File.new(file_name)

while(line = file.gets)
	f = 0
	g = 1
	d = line.chomp.to_i
	c = 0

	while(c <= d)
		if c <= 1
			out = c
		else
			out = f + g
			f = g
			g = out	
		end
		c = c + 1		
	end	

	puts out
end	

