def primer(num)
start = 2
primes = [2]

while primes.count < num+1
	start+=1
	for prime in primes
		if start%prime == 0
			break
		else
			if !primes.include?(start)
			primes << start
			end
		end
	end 
end

return primes.last
end