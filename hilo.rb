random_number = rand(1..100)
# print random number for testing purposes
puts random_number
puts "Enter a number between 1 and 100. press enter to submit your guess"
guess = $stdin.readline()
guess_as_int = Integer(guess)

if guess_as_int == random_number
    puts "Correct! You win"
else
    if guess_as_int > 100
        puts "Your guess is too high. Try again"
    elsif guess_as_int < 1
        puts "Your guess is too low. Try again"
    else
        puts "Incorrect! Try again"
    end
end
