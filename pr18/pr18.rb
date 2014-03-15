require 'pry'
def path_sum
grid = [[75],[95,64],[17,47,82],[18,35,87,10],[20,4,82,47,65],[19,1,23,75,3,34],[88,2,77,73,7,63,67],[99,65,4,28,6,16,70,92],[41,41,26,56,83,40,80,70,33],[41,48,72,33,47,32,37,16,94,29],[53,71,44,65,25,43,91,52,97,51,14],[70,11,33,28,77,73,17,78,39,68,17,57],[91,71,52,38,17,14,91,43,58,50,27,29,48],[63,66,4,68,89,53,67,30,73,16,69,87,40,31],[4,62,98,27,23,9,70,98,73,93,38,53,60,4,23]]

# row = 0
# holder = [grid[row].first]
# i = 0
# while row < grid.length-1
		
# 		if grid[row+1][i] > grid[row+1][i+1]
# 			holder << grid[row+1][i]
# 			i = i
# 		else
# 			holder << grid[row+1][i+1]
# 			i= i+1
# 		end
# 		row+=1

# end
# print holder
# puts holder.reduce(:+)

row = 0
holder = [grid[row].first]

index = 0

while row < grid.length-1

	tester = []
	first_case = grid[row+1][index] + grid[row+2][index]
	second_case = grid[row+1][index] + grid[row+2][index+1]
	third_case = grid[row+1][index+1] + grid[row+2][index+1]
	fourth_case = grid[row+1][index+1] + grid[row+2][index+2]
	tester.push(first_case,second_case,third_case,fourth_case)
	binding.pry
	case tester.sort[-1]
	when first_case
		holder.push(first_case)
		row+=2
		index = index
	when second_case
		holder.push(second_case)
		row+=2
		index+=1
	when third_case
		holder.push(third_case)
		row+=2
		index+=1
	when fourth_case
		holder.push(fourth_case)
		row+=2
		index+=2
	end
end

print holder
puts holder.reduce(:+)
end