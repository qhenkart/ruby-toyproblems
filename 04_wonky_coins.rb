=begin def wonky_coins(n)
	purse = []
	purse << n 
	until purse.inject(:+) == 0
		purse = bank(purse)
	end
	purse.length
end

def bank(purse)
	new_purse = []
	purse.each do |x|
		if x != 0
			new_purse << x / 2
			new_purse << x / 3
			new_purse << x / 4
		else
			new_purse << x
		end
	end
	new_purse
end

=end

def wonky_coins(n)
	return 1 if n == 0
	return wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)

end