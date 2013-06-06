require_relative "board"
require_relative "tictactoe"

	ttt = Tictactoe.new

    counter = 0

		ttt.board.draw_board

	while true
		choice = gets.chomp

		if ttt.valid?(choice)
			counter += 1
			counter % 2
				if counter % 2 != 0
					ttt.player1(choice)
					ttt.board.draw_board
				  		if ttt.result
				    		puts "YOU WON PLAYER 1"
				    		break
				 		end
				else ttt.player2(choice)
			 	 	ttt.board.draw_board
			 	  		if ttt.result
				    		puts "YOU WON PLAYER 2"
				    		break
				  		end
				end
			if counter == 9
			  	puts "YOU BOTH LOSE!!!!!! SUCKERS!!!!"
			  	break
			end
		  else puts "Invalid Choice"
		end
	end