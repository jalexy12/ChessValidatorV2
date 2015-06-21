require_relative 'Piece'

class Queen < Piece
	def moves
		[straight_in_any_direction(1..7), diagonal(1..7)]
	end
end