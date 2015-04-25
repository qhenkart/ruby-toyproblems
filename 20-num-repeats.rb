# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
	count = {}
	string.each_char {|x| count[x] = string.count(x)}
	count.select! {|k, v| v > 1}
	count.length
end

puts("num_repeats(\"abdbc\") == 1: #{num_repeats("abdbc") == 1}")
# one character is repeated
puts("num_repeats(\"aaa\") == 1: #{num_repeats("aaa") == 1}")
puts("num_repeats(\"abab\") == 2: #{num_repeats("abab") == 2}")
puts("num_repeats(\"cadac\") == 2: #{num_repeats("cadac") == 2}")
puts("num_repeats(\"abcde\") == 0: #{num_repeats("abcde") == 0}")
