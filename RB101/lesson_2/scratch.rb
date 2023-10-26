
arr = [1, 2, 3, 4, 5, 6]

new_arr = []

arr.each do |number|
	iterator = 1
	if iterator % 2 != 0 then next
	else
		new_arr << number
		iterator += 1
	end
end

puts new_arr