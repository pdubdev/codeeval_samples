#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end

file = File.new(file_name)

while(line = file.gets)
	if line =~ /\d/
		digits = line.chomp.split(",")
		out = []
	 	out_ind = 0
		
		digits.each_with_index do | item, index |
			if (out.include?(item))
				# hits = true
			else
				out << item
			end	
		end	

		puts out.join(',')
	end
end
