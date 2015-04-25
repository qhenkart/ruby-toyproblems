RULES = {
	"rock" => 		{0 => "Rock, Draw", 1 => "Paper, Lose", 2 => "Scissors, Win"},
	"paper" => 		{0 => "Rock, Win", 1 => "Paper, Draw", 2 => "Scissors, Lose"},
	"scissors" => 	{0 => "Rock, Lose", 1 => "Paper, Win", 2 => "Scissors, Draw"}
}

def rps
	while true
		puts "Please type Rock, Paper or Scissors or Exit to quit"
		usr = gets.chomp
		break if usr.downcase == "exit"
		puts RULES[usr.downcase][rand(3)]
	end
end

