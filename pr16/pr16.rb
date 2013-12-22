# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?


# a = 32768
# puts ((a**66)+(2**10)).to_s.split("").map{|x| x.to_i}.reduce(:+)


puts (2**1000).to_s.split("").map{|x| x.to_i}.reduce(:+)