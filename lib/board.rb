class Board
  
  attr_accessor :cells
  
  
  def initialize
    @cells = Array.new(9, " ")
  end
  
  def reset!
    self.cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(user_input)
    cells[user_input.to_i-1]
  end


  def full?
    @cells.none? {|cell| cell == " "}
  end
  
  def turn_count
   counter = 0
   @cells.each do |cell|
      if cell == "X" || cell == "O"
         counter += 1
      end
   end
   counter
end

def taken?(position)
# @cells != " " && @cells!= ""
  
  self.cells[position.to_i-1] == "X" ||
  self.cells[position.to_i-1] == "O"
end

def valid_move?(position)
   !taken?(position) && position.to_i >0 && position.to_i <=9
end

def update(position,player)
  self.cells[position.to_i-1] = player.token
end

end