#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	

file = File.new(file_name)

while(line = file.gets)
	digits = line.split(" ")
	divisor_a = digits[0].to_i
	divisor_b= digits[1].to_i
	up_to_value = digits[2].to_i
	numbers = 1.upto(up_to_value).to_a

	numbers.each { |current_number|
		idx = numbers.index(current_number)

		if current_number % divisor_a == 0
			numbers[idx] = "F"			
		end

		if current_number % divisor_b == 0
			if numbers[idx] == "F"
				numbers[idx] = "FB"
			else	
				numbers[idx] = "B"
			end	

		end				
	}

	puts numbers.join(" ")
end
