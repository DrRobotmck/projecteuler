number = 998001
num_array = []
product_array = []
first = 999

while number > 100000 do
	num_str = number.to_s
	if num_str[0..2] == num_str[3..5].reverse
		num_array << number
	end
	number-=1
end

while first > 320 do
	count = 999
	second = count
	while second > 320 do
		product_array << (first * second)
		second-=1
	end 
	
	first-=1
	count-=1
	
end

puts (product_array & num_array).sort {|x,y| y <=> x}.first

# answer correct --> 906609
