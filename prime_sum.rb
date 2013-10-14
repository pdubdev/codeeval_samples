#!/usr/bin/ruby

prime = 0
count = 1
sum = 0
item = 1
while count <= 1000
	prime = 0
	in_max = (item - 1)
	if item == 2
		prime = 1
	end
	x_item = 2
	while (x_item >= 2 and x_item <= in_max)	
		if ((item % x_item) != 0) 
	 		prime = 1
	 		# puts z
	 	else
	 		prime = 0
	 		break
	 	end
	 	x_item = x_item + 1
	end

	if prime == 1
		sum = sum + item
		count = count + 1
	end
	
	item = item + 1

end
puts sum

