class Board

attr_accessor :number, :draw_board

	def initialize
		@number = {
		"1" => "1",
		"2" => "2",
		"3" => "3",
		"4" => "4",
		"5" => "5",
		"6" => "6",
		"7" => "7",
		"8" => "8",
		"9" => "9"
	}
    end

    def draw_board
    	puts "    " + @number["1"] + " " + "|" + " " + @number["2"] + " " + "|" + " " + @number["3"]
		puts "   ----------"	
		puts "    " + @number["4"] + " " + "|" + " " + @number["5"] + " " + "|" + " " + @number["6"]
		puts "   ----------"
		puts "    " + @number["7"] + " " + "|" + " " + @number["8"] + " " + "|" + " " + @number["9"]
	end
end