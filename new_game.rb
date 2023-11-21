class NewGame
    @input
    @guess
    @random_number

    def start(number_range, chances)
        @random_number = rand(number_range[0]..number_range[1])
        puts @random_number
        guesses = chances - 1
        puts "Enter a number between #{number_range[0]} and #{number_range[1]}, then press enter to submit your guess. You have #{guesses} chances to guess the correct number"
        get_guess
        attempts = 0
        while attempts < guesses
            attempts = attempts + 1
            response = check_guess
            puts response ? response : break
            get_guess
        end
        puts is_correct ? "Correct! You win" : "Sorry, you ran out of guesses. The number was #{@random_number}"
    end

    def get_guess
        @input = gets.chomp
        @guess = @input.to_i
    end 

    def check_guess
        response = nil
        if @guess.to_s != @input
            response = "Your guess is not a whole number. Try again"
        elsif @guess > @random_number
            response = "Your guess is too high. Try again"
        elsif @guess < @random_number
            response = "Your guess is too low. Try again"     
        end
    end

    def is_correct
        @guess == @random_number
    end
end