def ordered_vowel_words(str)
	arr = str.split(' ')
	final = arr.select { |x| ordered_vowel_words?(x) }
	final.join(" ")
end



def ordered_vowel_words?(word)
	compr = 'a'
	arr = word.scan(/[aeiou]/)
	arr.each do |vowel|
		if vowel < compr
			return false
		else 
			compr = vowel
		end
	end
	true
end
