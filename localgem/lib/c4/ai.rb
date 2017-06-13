
class AI
   INFNEG = -1000000000
   INF = 1000000000

  def initialize
    @engine = Engine.new
    @win_engine = Engine.new(:winner)
    @first_time=true
  end


  def actions board
    actions = []
    board.width.times do |x|
      if !board.column_full? x
        actions << x
      end
    end
    actions
  end

  def evaluate board
    @engine.score(board)
  end

  #def evaluate_depricated board
  #end

  #def cut_off? board,depth
  #end

  def rand_choice 
     Random.rand(0...6)
  end

  def next_move board
    if @first_time then
       @first_time=false
       rand_choice
    else
       analyze board
    end
  end

  def analyze board

       bestcolumn = 0
       i=0
       bestscore = INFNEG
       best = Hash.new
       bestnode = Hash.new

       (0..6).each do 
       #i = rand_choice
       node = MaxNode.new
       cboard  = board.clone
       cboard.drop_coin(i,"O")
       cboard.drop_coin(rand_choice,"X")
       pointsa = evaluate cboard
       nodea = MinNode.new( :parent=>node, :value=>pointsa )
       k = rand_choice
       cboard.drop_coin(k,"O")
       cboard.drop_coin(rand_choice,"X")
       pointsaa = evaluate cboard
       nodeaO = MaxNode.new( :parent=>nodea, :value=>pointsaa )


       j = rand_choice
       cboard  = board.clone
       cboard.drop_coin(j,"O")
       cboard.drop_coin(rand_choice,"X")
       pointsb = evaluate cboard
       nodeb = MinNode.new( :parent=>node, :value=>pointsb )
       l = rand_choice
       cboard.drop_coin(l,"O")
       cboard.drop_coin(rand_choice,"X")
       pointsbb = evaluate cboard
       nodebO = MaxNode.new( :parent=>nodeb, :value=>pointsbb )
       vals = { pointsa => i,pointsb => j,pointsaa => k,pointsbb => l  }
       newb =  "#{vals[node.value]}".to_i 
       bestnode["#{i}"] = newb
       i += 1
       end
       #p bestnode
       v = largest_hash_key bestnode
       return v[0].to_i
  end

  def score
      #Rule 1: If I have a winning move, take it.
      #Rule 2: If the opponent has a winning move, block it.
      if (level == 0) then
         return rand_choice
      end
      bestscore = INFNEG 
  end
 
  def largest_hash_key(hash)
       hash.max_by{|k,v| v}
  end


end
