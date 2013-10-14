#!/usr/bin/ruby

digits = (1..99).to_a
		
digits.each_with_index do | item, index |
	if (item % 2) != 0
		puts item
	end	
end	
