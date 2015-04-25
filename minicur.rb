def looper
	(1...249).each do |x|
		p x if x % 7 == 0
	end
end



def factora

	(1..100).each do |x|
		puts ''
		(1..x).each do |y|
			p y if x % y == 0
		end
	end
end


def bubblesort(arr)
	arr.each_with_index { |x, idx| arr.each_with_index { |y, ydx| arr[idx], arr[ydx] = arr[ydx], arr[idx] if x > y && idx < ydx}}
end



def substring(str)

	str.split('').each_with_index do |x, idx|
		i = 1
		until i > str[idx..-1].split('').length
			p str[idx.. -1].split('').take(i).join
			i += 1
		end
	end
end

RULES = {
"rock" 		=> {0 => "comp: Rock, it's a TIE!", 1 => "comp: Paper, you LOSE!", 	 2 => "comp: Scissors, you WIN!"},
"paper" 	=> {0 => "comp: Rock, you WIN!", 	1 => "comp: Paper, it's a TIE!", 2 => "comp: Scissors, you LOSE!"},
"scissors" 	=> {0 => "comp: Rock, you LOSE!", 	1 => "comp: Paper, you WIN!",	 2 => "comp: Scissors, it's a TIE!"}
}
def rps(option)
	RULES[option.downcase][rand(3)]
end


def swingers(couples)
	i = 0
	girly = couples[couples.length-1][1]
	until i == couples.length
		couples[i][1], girly = girly, couples[i][1]
		i += 1
	end
	couples
end

def unique(arr)
	blah = arr.dup
	arr.each_with_index {|x, idx| arr.delete_at(idx) if arr.count(x) > 1}
end

def twosum(arr)
	arr.each_with_index do |num1, idx|
		arr.each_with_index do |num2, ydx|
			if num1 + num2 == 0 && idx != ydx
				return "#{num1} + #{num2} == 0"
			end
		end
	end
	"No numbers equal zero"
end


def toh
towers = {
	tower1: [4,3,2,1],
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


def my_transpose(arr, option)
	if option == "col" || option == "row"
		newrow = []
		i = 0
		until i == arr[0].length
			section = 0
			temp = []
			until section == arr.length	
				option == "col" ? temp << arr[section][i] : temp << arr[i][section]
				section += 1
			end
			newrow << temp
			i += 1
		end
		p newrow
	else
		puts "Sorry that option is not valid, please use 'col' or 'row'"
	end
end



def multiples(arr)
	arr.map!{|x| x * 2}
end

def median(arr)
	if arr.length.odd? 
		return arr[arr.length/2]

	else
		return (arr[arr.length/2] + arr[arr.length/2 + 1])/2
	end
end

def injector(arr)
	arr.inject('') {|inj, stringer| inj + stringer}
end

def hash_correct(hasher)
	newer = {}
	hasher.each do |k, v|
		newer[k.to_s.next.to_sym] = v
	end
	newer
end


def fizzbuzz
	(1..100).each do |x|
		if x % 3 == 0 && x % 5 == 0
			puts "FizzBuzz"
		elsif x % 3 == 0 
			puts "Fizz"
		elsif x % 5 == 0
			puts "Buzz"
		else
			puts x
		end
	end

end

