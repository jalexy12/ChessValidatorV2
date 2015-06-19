require_relative('MoveModule')
require_relative('CoordSplitter')
class Piece
	include Moves
	include CoordSplitter

	attr_reader :color, :valid_moves

	def initialize(initial)
		@initial = cord_splitter(initial)
		@valid_moves = moves
		if @initial[1] <= 2
			@color = "White"
		else
			@color = "Black"
		end
		@movecount = 0
	end
		

     def valid_move?(final_pos)
     	new_pos = cord_splitter(final_pos)
		diff = [(@initial[0] - new_pos[0]), (@initial[1] - new_pos[1])]
		@valid_moves.each do |move|
			if move.coords == diff
				return true
			end
		end	
		return false
     end
end

class Pawn < Piece
	def initialize(initial)
		@initial = cord_splitter(initial)
		moves
	end

	def moves
		if @movecount == 0
			straight_in_any_direction(2)
		else
			straight_in_any_direction(1)
		end
	end
end
class Bishop < Piece
	def moves
		diagonal(1..7)
	end
end

class Queen < Piece
	def moves
		straight_in_any_direction(1..7)
		diagonal(1..7)
	end
end

class Rook < Piece
	def moves
		straight_in_any_direction(1..7)
	end
end

class King < Piece
	def moves
		straight_in_any_direction(1)
		diagonal(1)
	end
end

class Knight < Piece
	def moves
		l_shape
	end
end

