#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	
x = 0
file = File.new(file_name)
while(line = file.gets)
	
	x = x + line.to_i


	# digits = line.split(";").to_a
	# left = digits[0].split(",").to_a
	# right = digits[1].split(",").to_a
	# hits = ""
	# left.each { |left_curr_number|
	# 	idl = left.index(left_curr_number)
		
	# 	right.each { |right_curr_number|
	# 		idr = right.index(right_curr_number)
	# 		if (right[idr] == left[idl])
	# 			hits = hits + left[idl].to_s + ","
	# 		end 
	# 	}
	# }
	
	# hits.chop! if hits.end_with? ","
	# puts(hits)
end
puts(x)
