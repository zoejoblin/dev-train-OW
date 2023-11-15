random_number = rand(1..100)
# print random number for testing purposes
puts random_number
puts "Enter a number between 1 and 100. press enter to submit your guess"
guess = $stdin.readline()
guess_as_int = Integer(guess)
number_of_guesses = 0

for i in 1..5 do
    if guess_as_int != random_number
        if guess_as_int > 100
            puts "Your guess is too high. Try again"
        elsif guess_as_int < 1
            puts "Your guess is too low. Try again"
        else
            puts "Incorrect! Try again"
        end
        guess = $stdin.readline()
        guess_as_int = Integer(guess)
    else
        puts "Correct! You win"
        break
    end
end
# TODO: prevent this from running if correct number is guessed
puts "Sorry, you ran out of guesses. The number was " << String(random_number)
