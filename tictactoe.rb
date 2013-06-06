require_relative "board"

class Tictactoe
	attr_accessor :board

	def initialize
		@board = Board.new
	end

	def valid?(choice)
		choice.to_i.between?(1,9)
	end

	def player1(choice)
		  @board.number[choice] = "o"
	end


	def player2(choice)
		  @board.number[choice] = "x"
	end

	def result
		if  @board.number["1"] == @board.number["2"] && @board.number["2"] == @board.number["3"]
			game_over
			elsif @board.number["4"] == @board.number["5"] && @board.number["5"] == @board.number["6"]
				game_over
			elsif @board.number["7"] == @board.number["8"] && @board.number["8"] == @board.number["9"]
				game_over
			elsif @board.number["1"] == @board.number["4"] && @board.number["4"] == @board.number["7"]
				game_over
		    elsif @board.number["2"] == @board.number["5"] && @board.number["5"] == @board.number["8"]
		    	game_over
		    elsif @board.number["3"] == @board.number["6"] && @board.number["6"] == @board.number["9"]
		    	game_over
		    elsif @board.number["1"] == @board.number["5"] && @board.number["5"] == @board.number["9"]
		    	game_over
		    elsif @board.number["3"] == @board.number["5"] && @board.number["5"] == @board.number["7"]
		    	game_over
		end
	end

	def game_over
		true
	end

end