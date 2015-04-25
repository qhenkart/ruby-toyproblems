def multiplier(num)
	num.collect {|x| x * 2}
end



def median(num)
=begin
	if num.count.even?
		ten = num.count / 2
		ten = ((ten + 1) + ten) /2
	else
		ten = (num.count+1) / 2
	end
=end

	sorted = num.sort
	len = sorted.length
	return (sorted[(len - 1) / 2] + sorted[len / 2]) / 2
end


def conc(str)
	ans = ""
	str.inject(0) {|acc, elem| 
		ans  << elem + " "
	}
	ans = ans.chop
	ans.concat(33)

end


def num_to_s(num, base)

	ans = []
	i=0

	while (num / base**i) != 0 do
		ans << (num / base ** i) % base
		i += 1
	end
	ans = ans.map do |x|

		if x == 10
			x = 'A'
		elsif x == 11
			x = 'B'
		elsif x == 12
			x = 'C'
		elsif x == 13
			x = 'D'
		elsif x == 14
			x = 'E'
		elsif x == 15
			x = 'F'
		else
			x
		end
			
	end
	ans.reverse!.join
end

def caesar(str, num)
	arr = []
	str.each_byte {|x| arr << x }
	answ = arr.map do |x|
		if x == 32
			" "
		elsif (x+num) > 122
			((x+num - 122)+ 96).chr
		else
			(x + num).chr
		end
	end
	answ.join
end


#class Array
	def my_uniq(arr)
		ans= []
		arr.each_with_index do |x, index|
			guy = false
			arr.each_with_index do |y, yindex|
				if x == y && index != yindex
					guy = true
				end
			end
			ans << x if !guy
		end
		ans

	end
#end



def twosum(arr)
	ans= false
	arr.each_with_index do |x, index|
		arr.each_with_index do |y, yindex|
			if x + y == 0 && index != yindex
				ans = true
			end
		end
	end
	ans

end


def my_transpose(arr)
	column = []
	column2 = []
	column3 = []
	cols = []

	arr.each do |x|
		x.each_with_index do |y, yindex|
			if yindex == 0
				column << y
			elsif yindex ==1
				column2 << y
			else
				column3 << y
			end
		end
	end
	cols << column
	cols << column2
	cols << column3
end


def swingers(arr)

	group1 = []
	group2 = []
	group3 = []
	ans = []
	group1 << arr[0].shift
	group2 << arr[1].shift
	group3 << arr[2].shift
	group1 << arr[2].shift
	group2 << arr[1].shift
	group3 << arr[0].shift


		#while !x.empty?
	#		group.empty? ? randogroup << x.shift : randogroup << x.pop
	#	end

	

	ans << group1
	ans << group2
	ans << group3


end
