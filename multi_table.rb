#!/usr/bin/ruby

digits = (1..12).to_a
		
digits.each_with_index do | item, index |

	x = (1..12).to_a

	total = 0
	x.each do
		total = total + item
			if total < 10
				print "   " + total.to_s
			elsif total > 99
				print " " + total.to_s
			else
				print "  " + total.to_s
			end 
	end

print "\n"
end	
