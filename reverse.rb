#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	

file = File.new(file_name)

while(line = file.gets)
	if line =~ /\w/
		words = line.split(" ").to_a
		words.reverse!
		puts words.join(" ").rstrip
	end
end
