def bubble_sort(arr)
	bubbles = arr
	arr.each_with_index do | x, index|
		arr.each_with_index do |y, yindex|
			if x > y && index < yindex
				bubbles[index], bubbles[yindex] = bubbles[yindex], bubbles[index]
			end
		end
	end
end
