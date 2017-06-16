require_relative 'c4/ai'
require_relative 'c4/board'
require_relative 'c4/engine'
require_relative 'c4/minimax'

class ConnectFour

  def board
    board = Board.construct(7,6)
  end
  
  def ai
    ai = AI.new()
  end
 
  def engine
    engine = Engine.new(:winner)
  end

  def minimax
    minimax = MinimaxNode.new
  end
  def maxnode
      maxnode = MaxNode.new 
  end

  def minnode
      maxnode = MinNode.new
  end
end
