module CoordSplitter
	def cord_splitter(letters)
		letters_toNumber = {"a" => 1, "b"=> 2, "c"=> 3, "d"=> 4, "e"=> 5, "f"=> 6, "g"=> 7, "h"=> 8} 
		key = letters[0]
		new_x = letters_toNumber[key]
		new_y = letters[1].to_i
		actual_position = [new_x,new_y]
		return actual_position
	end
end