require_relative 'new_game'

random_number_range = [1, 100]
no_of_chances = 6
new_game = NewGame.new(random_number_range, no_of_chances)
new_game.start
