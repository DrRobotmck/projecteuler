def sumsquare(number)

	base_array = *(1..number)
	add_square = []
	base_array.each{|x| add_square << x**2}
	print add_square

	a = base_array.reduce(:+)**2 - add_square.reduce(:+)


end