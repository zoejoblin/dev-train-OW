random_number = rand(1..100)
puts "Enter a number between 1 and 100. press enter to submit your guess"
input = gets.chomp
guess = input.to_i
response = ''
count = 0
while count < 5
    count = count + 1
    response = ''
    if guess > 100
        response = "Your guess is too high. Try again"
    elsif guess < 1
        response = "Your guess is either too low or is not a number. Try again"
    else
        response = (guess == random_number) ? break : "Incorrect! Try again"
    end
    puts response
    input = gets.chomp
    guess = input.to_i
end
response = (guess == random_number) ? "Correct! You win" : "Sorry, you ran out of guesses. The number was " << String(random_number)
puts response