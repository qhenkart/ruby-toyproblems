# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
	#prev = {}
	#sentence.split(' ').each {|x| prev[x] = x.split('').length}
	#prev.sort_by{|v, k| k}.to_a.pop.shift
	sentence.split(' ').max_by{|x| x.length}

end

puts("longest_word(\"short longest\") == \"longest\": #{longest_word("short longest") == "longest"}")
puts("longest_word(\"one\") == \"one\": #{longest_word("one") == "one"}")
puts("longest_word(\"abc def abcde\") == \"abcde\": #{longest_word("abc def abcde") == "abcde"}")
