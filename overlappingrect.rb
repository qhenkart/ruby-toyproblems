def rect(str)
	arr = str.gsub("),(",'B').gsub("(","").gsub(")","").split('B').map do |x|
		x.split(",").map(&:to_i)
	end
	rect1 = arr[0..3]
	rect2 = arr[4..8]
	rect1xmax = [rect1[0][0], rect1[1][0], rect1[2][0], rect1[3][0]].max
	rect1xmin = [rect1[0][0], rect1[1][0], rect1[2][0], rect1[3][0]].min

	rect2xmax = [rect2[0][0], rect2[1][0], rect2[2][0], rect2[3][0]].max
	rect2xmin = [rect2[0][0], rect2[1][0], rect2[2][0], rect2[3][0]].min

	rect1ymax = [rect1[0][1], rect1[1][1], rect1[2][1], rect1[3][1]].max
	rect1ymin = [rect1[0][1], rect1[1][1], rect1[2][1], rect1[3][1]].min 

	rect2ymax = [rect2[0][1], rect2[1][1], rect2[2][1], rect2[3][1]].max
	rect2ymin = [rect2[0][1], rect2[1][1], rect2[2][1], rect2[3][1]].min 


	area = (rect1xmax - rect1xmin) * (rect1ymax - rect1ymin)
	x_min = [rect1xmin, rect2xmin].max
	x_max = [rect1xmax, rect2xmax].min

	y_min = [rect1ymin, rect2ymin].max
	y_max = [rect1ymax, rect2ymax].min

	return 0 if x_min > x_max || y_min > y_max
	newarea = (x_max - x_min) * (y_max - y_min)

	return area / newarea
end

