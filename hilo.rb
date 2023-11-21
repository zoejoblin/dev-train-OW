require_relative 'new_game'

new_game = NewGame.new
random_number_range = [1, 100]
chances = 6
new_game.start(random_number_range, chances)
