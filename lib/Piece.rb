require_relative('MoveModule')
require_relative('CoordSplitter')

class Piece

	include Moves
	include CoordSplitter

	attr_reader :color, :valid_moves

	def initialize(initial)
		@initial = cord_splitter(initial)
		@valid_moves = moves.flatten
		if @initial[1] <= 2
			@color = "White"
		else
			@color = "Black"
		end
		@movecount = 0
	end

	def update_pos!(position)
		@initial = cord_splitter(position)
	end

     def valid_move?(final_pos)
     	new_pos = cord_splitter(final_pos)
		diff = [(@initial[0] - new_pos[0]).abs, (@initial[1] - new_pos[1]).abs]
		@valid_moves.each do |move|
			if move.coords == diff
				return true
			end
		end	
		return false
     end
end


