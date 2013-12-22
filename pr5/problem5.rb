
require 'prime'

def prime_factor(num)
	a= *(2..num)
	c = []
	d= []
	a.each do |x| 
		b = Prime.prime_division(x)[-1]
		if c.include?(b[0]) && d[c.index(b[0])] > b[1]
		elsif c.include?(b[0]) && d[c.index(b[0])] == b[1]
		elsif c.include?(b[0]) && d[c.index(b[0])] < b[1]
			d[c.index(b[0])] = b[1]
		else
			c << b[0]
			d << b[1]
		end
	end
	i = 0
	while i < c.size
		c[i] = c[i]**d[i]
		i+=1
	end
	c.reduce(:*)
end

#Answer:
#232792560