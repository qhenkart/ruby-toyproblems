# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
	special = []
	string.split('').each_with_index do |x, index|  
		if x == 'a'
			puts "hey"
			return true if string.split('')[(index + 1)..(index+3)].include?('z')
		end
	end
	false
end

puts("nearby_az(\"baz\") == true: #{nearby_az("baz") == true}")
puts("nearby_az(\"abz\") == true: #{nearby_az("abz") == true}")
puts("nearby_az(\"abcz\") == true: #{nearby_az("abcz") == true}")
puts("nearby_az(\"a\") == false: #{nearby_az("a") == false}")
puts("nearby_az(\"z\") == false: #{nearby_az("z") == false}")
puts("nearby_az(\"za\") == false: #{nearby_az("za") == false}")
