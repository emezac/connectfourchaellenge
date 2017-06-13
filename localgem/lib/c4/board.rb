require "matrix"
require "pp"

class Board < Matrix

  def self.construct(width,height)
    Board.build(height,width) {"_"}
  end

  def clone
    new_matrix @rows.map(&:dup), column_count
  end

  def drop_coin column,sign
    height.times do |y|
      row = height-1-y
      if self[column,row] == "_"
        self[column,row] = sign
        break
      end
    end
  end

  def column_full? column
    height.times do |row|
      if self[column,row] == "_"
        return false
      end
    end
    return true
  end

  def reset_column column,sign
    height.times do |y|
      row = height-1-y
      if self[column,row] == sign
        self[column,row] = "_"
        break
      end
    end
  end

  def full?
    width.times do |column|
      if not column_full? column
        return false
      end
    end
    return true
  end

  def []=(y,x,e)
    super(x,y,e)
  end

  def [](y,x)
    super(x,y)
  end


  def simple_render
    str = ""
    self.each_with_index do |e, row, col|
      str += "#{e}"
      if col == width-1
        str+= "\n"
      end
    end
    str
  end
  
   def render
    str = " C1 C2 C3 C4 C5 C6 C7 \n"
    self.each_with_index do |e, row, col|

      if e == 'X' then str+= " \e[32mX\e[0m " end
      if e == 'O' then str+= " \e[31mO\e[0m " end
      if e == '_' then str+= " _ " end

      if col == width-1
        str+= "\n"
      end
    end
    str
  end


  alias_method :to_s, :render
  alias_method :width, :column_count
  alias_method :height, :row_count

end
