

def tower
	towers= {
		tower1: [4, 3, 2, 1],
		tower2: [],
		tower3: []
	}

	while towers[:tower3] != [4,3,2,1]
		print "Tower1 contains #{towers[:tower1]}\n"
		print "Tower2 contains #{towers[:tower2]}\n"
		print "Tower3 contains #{towers[:tower3]}\n"
		puts "What Tower would you like to pull from, tower1, tower2, or tower3"
		usr = gets.chomp.downcase.to_sym
		if towers[usr].nil? || towers[usr].empty?
			puts "Invalid choice\n"
		else
			puts "Where would you like to move it to? tower1, tower2, or tower3"
			choice = gets.chomp.downcase.to_sym

			if towers[choice].nil? || (!(towers[choice].empty?)  &&  towers[usr].last > towers[choice].last)
				puts "Invalid choice"
			else
				towers[choice] << towers[usr].pop
			end
		end
	end

	puts "You have won!" 
	puts towers[:tower3]

end

