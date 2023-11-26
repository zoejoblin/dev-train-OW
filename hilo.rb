class HiloGame
  def initialize(min: 1 , max: 100, no_of_chances: 6)
    @input = nil
    # TODO: remove guess as instance variable, pass as param instead
    @guess = nil
    @range = number_range (1..100)
    @random_number = rand(min..max)
    @chances = no_of_chances
    @min = min
    @max = max
  end

  def start
    puts "Enter a number between #{@min} and #{@max}, then press enter to submit your guess. You have #{@chances} chances to guess the correct number"

    get_guess

    attempts = 0
    while attempts < (@chances - 1)
      attempts = attempts + 1

      response = check_guess
      break unless response
      puts response

      get_guess
    end

    puts is_correct? ? "Correct! You win" : "Sorry, you ran out of guesses. The number was #{@random_number}"
  end

  private

  def get_guess
    @input = gets.chomp
    @guess = @input.to_i
    # TODO: use regex instead to check that user has passed a number (regex crossword and regex 101 to learn)
  end 

  def check_guess
    if @guess.to_s != @input
      "Your guess is not a whole number. Try again"
    elsif @guess > @random_number
      "Your guess is too high. Try again"
    elsif @guess < @random_number
      "Your guess is too low. Try again"     
    end
  end

  def is_correct?
    @guess == @random_number
  end
end

max = 100
min = 1
no_of_chances = 5
new_game = HiloGame.new(no_of_chances:5)
new_game.start
