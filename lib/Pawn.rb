require_relative 'Piece'

class Pawn < Piece
	def moves
		[straight_in_any_direction(2), straight_in_any_direction(1)]
	end
end