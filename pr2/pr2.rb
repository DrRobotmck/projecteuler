def fibonacci(limit)

	
	fibs = [1,2]
	while fibs.last < limit
		fibs << fibs[-1] + fibs[-2]
	end

	holder = []
	fibs.each do |x| 
		if x.even?  
			holder.push(x)
		end
	end
	puts holder.reduce(:+)

end