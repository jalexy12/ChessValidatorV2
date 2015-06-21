require_relative 'Piece'


class Bishop < Piece
	def moves
		diagonal(1..7)
	end
end