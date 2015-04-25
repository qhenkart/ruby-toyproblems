def nearest_larger(arr, idx)

	ans = nil
	arr.each_with_index do |x, index|
		 if x > arr[idx]
		 	ans = index
		 	break
		 end
	end
	ans
end
