require 'pry'
require 'terminal-table'
require 'awesome_print'
require_relative './lib/Game.rb'

moves = IO.read("chessMoves.txt").split("\n")

new_moves = moves.map do | move |
	move.split
end


game = Game.new



game.validate



