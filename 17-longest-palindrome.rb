# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# Difficulty: hard.

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def longest_palindrome(string)
	
	longest = nil
	string.split('').each_index do |idx|	
		i = 1
		until i > string.length
			substring = string.slice(idx, i)
			longest = substring if palindrome?(substring) && (longest == nil || substring.length > longest.length)
			i += 1
		end
	end
	longest
end



=begin
	arr = string.split('')
	maxnum = [0]
	arr.each_with_index do |x, idx|
		options = arr.take(idx).reverse
		i = 1
		until i > options.length
			sum = x + options.take(i).join('') if palindrome?(options.take(i).join('')) 
			p sum
			maxnum = sum.length, sum.reverse if maxnum.first < sum.length && palindrome?(sum)
			p maxnum
			i += 1
		end
	end
	maxnum.pop
end
=end

puts("longest_palindrome(\"abcbd\") == \"bcb\": #{longest_palindrome("abcbd") == "bcb"}")
puts("longest_palindrome(\"abba\") == \"abba\": #{longest_palindrome("abba") == "abba"}")
puts("longest_palindrome(\"abcbdeffe\") == \"effe\": #{longest_palindrome("abcbdeffe") == "effe"}")
