require 'pry'
require 'terminal-table'
require 'awesome_print'
require_relative './lib/Game.rb'




game = Game.new



# game.validate
moves = IO.read("chessMoves.txt").split("\n")

moves.each do | move |
	new_move = move.split
	# @board.move!(new_move[0], new_move[1])
	game.update_table(new_move[0], new_move[1])
end	

# game.update_table("a1", "a4")

# game.validate


