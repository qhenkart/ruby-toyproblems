def letter_count(str)
	frequencies = {}
	str.each_char do |x|
		frequencies[x] = str.count(x) unless frequencies.has_key?(x) || x == " "
	end
	frequencies
end
