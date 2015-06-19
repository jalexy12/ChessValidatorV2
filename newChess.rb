require 'pry'
require_relative './lib/Piece.rb'
require_relative './lib/Board.rb'

board = Board.new

rook = Rook.new("a1")
king = King.new("e1")
knight = Knight.new("c1")
queen = Queen.new("d1")
puts queen.valid_move?('a7')