
=begin Cats in Hats
You have 100 cats (You are quite lucky to own so many cats!).

You have arranged all your cats in a line. Initially, none of your cats have
any hats. You take 100 rounds walking around the cats. Every time you stop at a
cat, you put a hat on it if it doesn't have one, and you take its hat off if it
has one on.

The first round, you stop at every cat. The second round, you only stop at
every 2nd cat (#2, #4, #6, #8, etc.). The third round, you only stop at every
3rd cat (#3, #6, #9, #12, etc.). You continue this process until the 100th
round (i.e. you only visit the 100th cat).

Write a program that prints which cats have hats at the end.

###### your code below this line
=end
def cats
    hatter = {}
    100.times do |x|
        hatter[x+1] = false    
    end
    round = 1
    until round > 100
        hatter.each { |k, v| v == true ? v = false : v = true if k % round == 0 }
        round +=1
    end
    
    hatter.each do |k, v|
        puts "Cat #{k} has a hat" if v == true
    end
end
=begin
        until i > 100
            if i % round == 0 && hatter[i] == false
                hatter[i] = true
            elsif i % round == 0 && hatter[i] == true
                hatter[i] = false
            end
            i += 1
        end
=end
        