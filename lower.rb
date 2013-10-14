#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	

file = File.new(file_name)

while(line = file.gets)
	if line =~ /\w/
		puts line.downcase
	end
end
