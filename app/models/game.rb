require 'connectfourgame'

class Game < ApplicationRecord

    attr_accessor :move, :board, :engine, :ai

    has_many :moves
	has_many :players, through: :moves

	def start	 
	  sgame = ConnectFour.new	
      @move = Move.new     
	  @engine = sgame.engine 
	  @board = sgame.board 
	  @ai = sgame.ai
	  nmove = @ai.next_move @board
    end   		 
	     	

    def save_move(mv,player,sign)
        @move.player_id = player
        @move.game_id = self.id
        @board.drop_coin(mv,sign)
        @move.boardmatrix = @board.simple_render
        @move.save
    end

    def ai
    	@ai
    end

    def board
    	@board
    end
end
