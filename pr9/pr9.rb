require 'pry'
#  def triples

#  	a = 3
#  	b = 4
#  	c = 5
#  	first_set = [[3, 4, 5]]
#  	second_set = [[3, 4, 5]]
#  	third_set = [[3, 4, 5]]


#  	while first_set.count < 16 
#  		first_set << [(a - 2*b + 2*c),(2*a - b + 2*c),(2*a - 2*b + 3*c)]
#  		a = first_set[-1][0]
#  		b = first_set[-1][1]
#  		c = first_set[-1][2]
#  		puts first_set[-1].reduce(:+) 
#  	end
#  	while second_set.count < 16 

#  		second_set << [(a + 2*b + 2*c), (2*a + b + 2*c), (2*a + 2*b + 3*c)]
#  		a = second_set[-1][0]
#  		b = second_set[-1][1]
#  		c = second_set[-1][2]
#  		puts second_set[-1].reduce(:+)
#  	end
#  	while third_set.count < 16

#  		third_set << [(-a + 2*b + 2*c), (-2*a + b + 2*c), (-2*a + 2*b + 3*c)]
#  		a = third_set[-1][0]
#  		b = third_set[-1][1]
#  		c = third_set[-1][2]
#  		puts	third_set[-1].reduce(:+)

#  	end


# end
# triples

# def find_triples

# 	a = 3

# end

# def please

# 	a = 12
# 	hold_a = []
# 	hold_c = []

# 	while a < 500
# 		hold_a << a
# 		hold_c << (a/2)**2 + 1
# 		a+=6
# 	end
# 	triples = []

# 	i = 0
# 	for numbers in hold_a
# 		# binding.pry
# 		triples << [Math.sqrt(hold_c[i]**2 - numbers**2), numbers,  hold_c[i]]
# 		i+=1
# 	end

# binding.pry
# end
# please


# def again
# 	a = 8
# 	b = 15
# 	c = 17
# 	triples = []
# 	while a < 1000
# 		triples << [a, b, c]
# 		a*=5
# 		b*=5
# 		c*=5	
# 	end

# 	for triplets in triples
		
# 		print triplets
		
# 	end
# end
# again

def scale_it
	sample = [[3,4,5],[5,12,13],[7,24,25], [8,15,17],[9,40,41]]
	holder = []
	sample.map do |scaler|
		i = 2
		while i < 50
			if i == 2 || i%2 != 0 
				if [scaler[0]*i, scaler[1]*i, scaler[2]*i].reduce(:+) == 1000
					return [scaler[0]*i, scaler[1]*i, scaler[2]*i].reduce(:*)
				end
			end
			i+=1
		end
	end
end
