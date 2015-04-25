def subarray(arr)
	maxnum = [0]
	arr.each_with_index do |x, idx|
		options = arr.take(idx).reverse
		i = 0
		until i > options.length
			i == 0 ? sum = x : sum = x + options.take(i).inject(:+) 
			maxnum = sum, [(idx-i), idx] if maxnum.first < sum
			i += 1
		end
	end
	maxnum.pop
end