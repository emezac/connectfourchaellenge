require 'connectfourgame'

class Game < ApplicationRecord


	def start
	     @sgame = ConnectFour.new
	     @board = @sgame.board
	     @ai= @sgame.ai
	     @ai.next_move(@board)
    end
end
