require_relative 'Piece'

class Rook < Piece
	def moves
		straight_in_any_direction(1..7)
	end
end
