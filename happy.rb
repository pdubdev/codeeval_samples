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

	loop_count = 1
	while i != 1 && loop_count < 99999
		i = 0
		num_str.each { | current_digit |
			i = i + (current_digit.to_i ** 2)			
		}

		num_str = ""
		num_str = i.to_s
		num_str = num_str.split(//)
		loop_count = loop_count + 1
		
	end
	loop_count = 1		
	
	if i == 1
		puts i
	else
		puts 0
	end	
end
