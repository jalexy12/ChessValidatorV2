require_relative 'Board.rb'

class Game
	def initialize
		@board = Board.new
		@table =  Terminal::Table.new
		make_rows
		print @table
	end

	def make_rows
		rows = [[],[],[],[],[],[],[],[]]
		alpha_proc = lambda { |letter, comparison|  letter.to_s.split("")[0] == comparison }
		letter_counter = 0

		("a".."h").each do |letter|
			@board.board.each do |key, value|
				if alpha_proc.call(key, letter)
					rows[letter_counter].push([key.to_s, value.class.to_s])
				end
			end
			letter_counter += 1
		end
		@table.rows = rows
	end

	def validate
		moves = IO.read("chessMoves.txt").split("\n")

		new_moves = moves.map do | move |
			move.split
		end

		new_moves.each do |move|
		 	@board.move!(move[0], move[1])
		 end
	end
end