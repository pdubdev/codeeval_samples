#!/usr/bin/ruby

file_name = ARGV[0]

if file_name.nil?
	exit
end	

file = File.new(file_name)
while(line = file.gets)
	input_stuff = line.split(",")
	str = input_stuff[0].to_s
	charr = input_stuff[1].to_s.chomp
  final_ans = -1

	str.split("").each_with_index { | charrrr, i |

		if(str[i] == charr) 
			final_ans = i
		end
	}

	puts final_ans
end
