nat_num = []

puts "Enter a max value"
print ">"
max_val = gets.chomp.to_i

puts "Enter two multiples"
print ">"
first = gets.chomp.to_i
print ">"
second = gets.chomp.to_i

i = 0
while i < max_val do
  num = i
  if (num % first == 0) || (num % second == 0)
    nat_num << num
  end
  i+=1
end

final_num = 0 

for numbers in nat_num do
  final_num += numbers
end

puts final_num