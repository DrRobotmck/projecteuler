# i want a number that is divisible by itself and 1 ONLY

# i want a number that also when 600851475143 % number = 0 ALWAYS

number = 600851475143
i = 500000
num_array = []

while i > 0 do
	if i%i == 0 && i%2 != 0 && i%3 !=0 && number%i == 0
		num_array << i 
	end
	i-=1
end

# start from lowest prime and multiply each until you get the starting number
# that will be the highest prime factor

j = 0
numero = 1
until numero == number do
	numero*=num_array.reverse[j]
	j+=1
end
puts num_array.reverse[j-1]

# answer = 6857