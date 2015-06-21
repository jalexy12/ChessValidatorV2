require 'pry'
require 'terminal-table'
require 'awesome_print'
require_relative './lib/Piece.rb'
require_relative './lib/Board.rb'

moves = IO.read("chessMoves.txt").split("\n")

new_moves = moves.map do | move |
	move.split
end


board = Board.new

alpha_proc = lambda { |letter, comparison|  letter.to_s.split("")[0] == comparison }

rows = [
 [],
 [],
 [],
 [],
 [],
 [],
 [],
 []

]

letter_counter = 0

("a".."h").each do |letter|
	board.board.each do |key, value|
		if alpha_proc.call(key, letter)
			rows[letter_counter].push([key.to_s, value.class.to_s])
		end
	end
	letter_counter += 1
end






table = Terminal::Table.new :rows => rows
table.style = {:padding_left => 1, :padding_right => 1}

print table



# new_moves.each do |move|
# 	board.check_valid(move[0], move[1])
# end



