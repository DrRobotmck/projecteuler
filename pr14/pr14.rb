require 'pry'

def collatz
	n = *(1..999999)

	holder = [[0]]
	for numbers in n
		secondary = [numbers]
		while numbers != 1
			if numbers%2 == 0
				numbers/=2
				secondary << numbers
			else
				numbers = numbers*3 + 1 
				secondary << numbers
			end	
		end
		if secondary.length > holder.last.length
			holder.pop
			holder << secondary
		end
	end
puts holder[0][0]
end

collatz