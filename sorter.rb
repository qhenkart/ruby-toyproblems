def sort(arr)
	rec_sort(arr, [])
end


def rec_sort(unsorted, sorted)
	if unsorted.length <=0
		return sorted
	end


	smallest = unsorted.pop
	still_unsorted = []

	unsorted.each do |tested_object|
		if tested_object.downcase < smallest.downcase #changed for the dictionary exercise
			still_unsorted << smallest
			smallest = tested_object
		else
			still_unsorted << tested_object
		end
	end

	sorted << smallest

	rec_sort(still_unsorted, sorted)
end

to_be_sorted = %w{sometimes I Feel like i dont have A a partner}
puts sort(to_be_sorted)




def shuffle(arr)

	shuffled_array = []
	while arr.length > 0
		rand_index = rand(arr.length)
		curr_index = 0
		new_arr = []

		arr.each do |x|
			if curr_index == rand_index
				shuffled_array << x
			else
				new_arr << x
			end
			curr_index = curr_index +1
		end
		arr = new_arr
	end
	shuffled_array

end

puts shuffle([1,2,3,4,5,6,7,8,9])