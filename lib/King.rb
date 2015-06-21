require_relative 'Piece'


class King < Piece
	def moves
		[straight_in_any_direction(1), diagonal(1)]
	end
end