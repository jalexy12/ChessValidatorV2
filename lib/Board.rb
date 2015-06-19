require_relative("Piece")
class Board
	def initialize()
		@board = {
			a1: Rook.new("a1"), a2: Pawn.new("a2"), a3: nil, a4: nil, a5: nil, a6: nil, a7: Pawn.new("a7"), a8: Rook.new("a8"), 
			b1: Knight.new("b1"), b2: Pawn.new("b2"), b3: nil, b4: nil, b5: nil, b6: nil, b7: Pawn.new("b7"), b8: Knight.new("b8"), 
			c1: Bishop.new("c1"), c2: Pawn.new("c2"), c3: nil, c4: nil, c5: nil, c6: nil, c7: Pawn.new("c7"), c8: Bishop.new("c8"), 
			d1: Queen.new("d1"), d2: Pawn.new("d2"), d3: nil, d4: nil, d5: nil, d6: nil, d7: Pawn.new("d7"), d8: Queen.new("d8"), 
			e1: King.new("e1"), e2: Pawn.new("e2"), e3: nil, e4: nil, e5: nil, e6: nil, e7: Pawn.new("e7"), e8: King.new("e8"), 
			f1: Bishop.new("f1"), f2: Pawn.new("f2"), f3: nil, f4: nil, f5: nil, f6: nil, f7: Pawn.new("f7"), f8: Bishop.new("f8"), 
			g1: Knight.new("g1"), g2: Pawn.new("g2"), g3: nil, g4: nil, g5: nil, g6: nil, g7: Pawn.new("g7"), g8: Knight.new("g8"), 
			h1: Rook.new("h1"), h2: Pawn.new("h2"), h3: nil, h4: nil, h5: nil, h6: nil, h7: Pawn.new("h7"), h8: Rook.new("h8") 
		}
	end
end