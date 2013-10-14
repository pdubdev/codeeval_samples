#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	
file = File.new(file_name)

# def slf_dsc(num)

# end	


while(line = file.gets)
	line = line.chomp
	dig_str = line.to_s
	#digits = line.split(",").to_a
	digits = line.split(//).to_a
	puts "----------"

	digits.each_with_index do | idx, num|
		puts "====== top"
		if dig_str.count(idx.to_s) == num
			puts num
		end 
#		puts num
		puts "====== end"


	end
		


	# x = digits[0].to_i
	# y = digits[1].to_i
	# z = digits[2].to_i

	# binr = x.to_s(2).reverse

	# if binr[y-1] == binr[z-1]
	# 	puts "true"
	# else
	# 	puts "false"	
	# end


end