nat_num = []

i = 0

while i < 1000 do
  num = i
  if (num % 3 == 0) || (num % 5 == 0)
    nat_num << num
  end
  i+=1
end
final_num = 0 

for numbers in nat_num do
  final_num += numbers
end

puts final_num