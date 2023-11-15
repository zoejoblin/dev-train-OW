number = rand(1..100)
# print random number for testing purposes
puts number
puts "Enter a number between 1 and 100. press enter to submit your guess"
guess = $stdin.readline()
guess_as_int = Integer(guess)
p guess_as_int
if guess_as_int == number
    puts "Correct! You win"
end
