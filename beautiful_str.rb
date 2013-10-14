#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	

file = File.new(file_name)
while(line = file.gets)
	h = Hash.new
	('a'..'z').each {|x| h[x] = 0}
	h.default = 0    
	how_beautiful = 0
	input_stuff = line.gsub(/[^A-Za-z]/, '').downcase.to_s.chomp
	
	str_arr = input_stuff.split(//).to_a

	str_arr.each_with_index do |lettr, indx|
	 let_count = str_arr.count(lettr)
	 h[lettr] = let_count
	end

	h = h.values.sort.reverse
	y = 26

	h.each do | item |
		how_beautiful =  how_beautiful + (item * y) 
		y = y - 1 	
	end

	puts how_beautiful
end
