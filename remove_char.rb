#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	

file = File.new(file_name)
while(line = file.gets)
	str = ""
	input_stuff = line.split(",")
	str = input_stuff[0].to_s.chomp
	charas = input_stuff[1].to_s.chomp.gsub(/\s+/, "")

 	charas.split("").each_with_index { | char, i |		
		str.delete!(char) 
	}

	puts str
end
