require_relative 'Board.rb'
require 'awesome_print'
require 'pry'
require_relative 'CoordSplitter'

class Game
	include CoordSplitter

	def initialize
		@board = Board.new
		@rows = [[],[],[],[],[],[],[],[]]
		@table =  Terminal::Table.new
		make_rows
		# print @table
	end

	def make_rows
		@rows = [[],[],[],[],[],[],[],[]]
		alpha_proc = lambda { |letter, comparison|  letter.to_s.split("")[0] == comparison }
		letter_counter = 0

		("a".."h").each do |letter|
			@board.board.each do |key, value|
				if alpha_proc.call(key, letter)
					@rows[letter_counter].push([key.to_s, value.class.to_s])
				end
			end
			letter_counter += 1
		end
		@table.rows = @rows
	end

	# def validate
	# 	moves = IO.read("chessMoves.txt").split("\n")

	# 	moves.each do | move |
	# 		new_move = move.split
	# 		# @board.move!(new_move[0], new_move[1])
	# 	end	
	# 	print @table
	# end

	def update_table(original, final)
		x =  cord_splitter(original)[0] - 1
		y =  cord_splitter(original)[1] - 1	

		new_x = cord_splitter(final)[0] - 1
		new_y = cord_splitter(final)[1] - 1

		piece = @rows[x][y][1]
		new_piece = @rows[new_x][new_y]
		title = ""

		if @board.valid?(original, final) && new_piece[1] == "NilClass"
			puts new_piece
			@rows[x][y] = [original, nil]
			@rows[new_x][new_y] = [final, piece]
			# @board.move!(original, final)
			title = "Moving #{piece} from #{original} to #{final}"
		else
			title = "Invalid move. Attempted to move #{piece} from #{original} to #{final}"
		end

		@table.rows = @rows
		@table.title = title
		print @table
		sleep(2)	
		system "clear" or system "cls"	
		make_rows
	end
end