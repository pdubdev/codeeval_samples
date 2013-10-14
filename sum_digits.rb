#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	
file = File.new(file_name)

while(line = file.gets)
	num_str = line.to_s
	num_str = num_str.split(//)
	i = 0
	num_str.each { | current_digit |
		i = i + current_digit.to_i
	}
	puts i

end
