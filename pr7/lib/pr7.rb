# def primer(num)
# start = 2
# primes = [2]

# while primes.count < num+1
# 	start+=1
# 	for prime in primes
# 		if start%prime == 0
# 			break
# 		else
# 			if !primes.include?(start)
# 			primes << start
# 			end
# 		end
# 	end 
# end

# return primes.last
# end

# find prime numbers up to the 10001st

# def primes(limit)

# 	primes = [2,3, 5, 7, 11,13,17]
# 	start = primes.last

# 	while primes.count < limit
# 		if start.to_s.split("").map{ |x| x.to_i}.reduce(:+)%3 != 0 && start%5 != 0 && start%7 !=0 
# 			primes << start
# 		end
# 		start +=2
# 	end
# 	binding.pry
# 	puts primes.count
# 	print primes.last
# end

# def primed(limit)
# 	primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
# 	start = primes.last+2

# 	while primes.count < limit
# 		isPrime = true
# 		if isPrime == true
# 			primes.each do |check| 
# 				if start % check === 0 || Math.sqrt(start) === check
# 					start+=2
# 					isPrime = false
# 				end
# 			end
# 					primes << start
# 					start+=2
# 		end

# 		print primes
# 	end
# end

def primal

	number_list = *(97..500)
	primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
	
	for numbers in number_list
		i = 0
		while number_list.length > 200
			if numbers % primes[i] == 0 
			number_list.delete(numbers)
			# elsif numbers % 3 == 0
			# 	number_list.delete(numbers) 
			# elsif numbers % 5 == 0
			# 	puts numbers
			# 	number_list.delete(numbers)
			# elsif numbers & 7 == 0
			# 	number_list.delete(numbers)
			# elsif number_list.include?(Math.sqrt(numbers))
			# 	number_list.delete(numbers)
			else
				i+=1
			end
		end
	end
	binding.pry
end