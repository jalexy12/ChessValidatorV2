class Move
	attr_reader :column
	attr_reader :row
	attr_reader :coords

	def initialize(column, row)
		@column = column
		@row = row
		@coords = [@column, @row]
	end

end