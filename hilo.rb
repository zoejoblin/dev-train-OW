class HiloGame
    def initialize(number_range, no_of_chances = 6)
        @input = nil
        @guess = nil
        @range = number_range
        @random_number = rand(@range[0]..@range[1])
        @chances = no_of_chances
    end

    def start
        puts "Enter a number between #{@range[0]} and #{@range[1]}, then press enter to submit your guess. You have #{@chances} chances to guess the correct number"
        get_guess
        attempts = 0
        while attempts < ( @chances - 1 )
            attempts = attempts + 1
            response = check_guess
            puts response ? response : break
            get_guess
        end
        puts is_correct? ? "Correct! You win" : "Sorry, you ran out of guesses. The number was #{@random_number}"
    end

    private

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

    def is_correct?
        @guess == @random_number
    end
end

random_number_range = [1, 100]
no_of_chances = 6
new_game = HiloGame.new(random_number_range, no_of_chances)
new_game.start
