#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	
file = File.new(file_name)
file_size = File.size(file_name).to_f

puts file_size.round(0)
