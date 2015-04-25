def word_unscrambler(str, words)
	answer = []
	words.each do |x|
		answer << x if x.split('').sort == str.split('').sort
	end
	answer
end
