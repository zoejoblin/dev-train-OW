random_number = rand(1..100)
puts "Enter a number between 1 and 100, then press enter to submit your guess. You have 6 chances to guess the correct number"
input = gets.chomp
guess = input.to_i
count = 0
while count < 5
    count = count + 1
    if guess.to_s != input
        puts "Your guess is not a whole number. Try again"
    elsif guess > random_number
        puts "Your guess is too high. Try again"
    elsif guess < random_number
        puts "Your guess is too low. Try again"
    else
        break
    end
    input = gets.chomp
    guess = input.to_i
end
puts (guess == random_number) ? "Correct! You win" : "Sorry, you ran out of guesses. The number was #{random_number}"
