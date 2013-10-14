#!/usr/bin/ruby

digits = (1..1000).to_a.reverse!
big_prime = 0

digits.each do | item |
	x = (2..(item - 1)).to_a

	x.each do | x_item |
	 if ((item % x_item) == 0) 
	 	big_prime = 0
	 	break
	 elsif item.to_s != item.to_s.reverse
	 	big_prime = 0
	 	break
	 else
	 	big_prime = item
	 end	

	end
	break if big_prime != 0 
end

puts big_prime

