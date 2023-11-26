# class to create a new instance of a hangman game

class Hangman
  def initialize(lives = 9)
    @guess = nil
    @lives = lives
    @word = get_word
    @hidden_word = hide_word
  end

  def start
    puts "Here is your word #{@hidden_word}. You have #{@lives} chances to guess the word correctly. Start Guessing!"
    guess = get_guess
    attempts = 0
    while attempts < (@lives - 1)
      attempts += attempts

      check_guess(guess)
      guess = get_guess
    end
  end

  # private
  def get_word
    words = File.read('words.txt').split
    random_number = rand(0..(words.length - 1))
    words[random_number]
  end

  def hide_word
    @word.gsub(/[A-Za-z]/, '?')
  end

  def get_guess
    gets.chomp
  end

  def check_guess(guess)
    puts "#{guess} is Correct!"
  end
end

new_game = Hangman.new
new_game.start
