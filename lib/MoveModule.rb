require_relative('./Move.rb')

module Moves
     def straight_in_any_direction(how_many)
     	moves = []
     	if how_many.instance_of?(Range)
	     how_many.each do |num|
	     	moves.push(Move.new(0, num))
	     	moves.push(Move.new(0, -1 * num))
	     	moves.push(Move.new(num, 0))
	     	moves.push(Move.new(-1 * num, 0))
		 end
		else
			moves.push(Move.new(0, how_many))
	     	moves.push(Move.new(0, -1 * how_many))
	     	moves.push(Move.new(how_many, 0))
	     	moves.push(Move.new(-1 * how_many, 0))
	     end
	     return moves
     end

     def l_shape
     	moves = []
 	    moves.push(Move.new(2, 1))
     	moves.push(Move.new(-2, 1))
     	moves.push(Move.new(2, -1))
     	moves.push(Move.new(-2, -1))
     	moves.push(Move.new(1, 2))
     	moves.push(Move.new(-1, 2))
     	moves.push(Move.new(1, -2))
     	moves.push(Move.new(-1, -2))
     	return moves
     end

     def diagonal(how_many)
     	moves = []
     	if how_many.instance_of?(Range)
	     how_many.each do |num|
	     	moves.push(Move.new(-1 * num, -1 * num))
	     	moves.push(Move.new(num, -1 * num))
	     	moves.push(Move.new(num, num))
	     	moves.push(Move.new(-1 * num, num))
		 end
		else
			moves.push(Move.new(0, how_many))
	     	moves.push(Move.new(0, -1 * how_many))
	     	moves.push(Move.new(how_many, 0))
	     	moves.push(Move.new(-1 * how_many, 0))
	     end
	     return moves
     end

end