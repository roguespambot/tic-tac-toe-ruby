class Game

  def initialize

  end

#array = [0, 1, 2
#         3, 4, 5
#         6, 7, 8]

#problems = 87562

  def x_victory?
    if Board.all[0].show_mark == "X" && Board.all[1].show_mark == "X" && Board.all[2].show_mark == "X"
      true
    elsif Board.all[3].show_mark == "X" && Board.all[4].show_mark == "X" && Board.all[5].show_mark == "X"
      true
    elsif Board.all[6].show_mark == "X" && Board.all[7].show_mark == "X" && Board.all[8].show_mark == "X"
      true
    elsif Board.all[0].show_mark == "X" && Board.all[3].show_mark == "X" && Board.all[6].show_mark == "X"
      true
    elsif Board.all[1].show_mark == "X" && Board.all[4].show_mark == "X" && Board.all[7].show_mark == "X"
      true
    elsif Board.all[2].show_mark == "X" && Board.all[5].show_mark == "X" && Board.all[8].show_mark == "X"
      true
    elsif Board.all[0].show_mark == "X" && Board.all[4].show_mark == "X" && Board.all[8].show_mark == "X"
      true
    elsif Board.all[2].show_mark == "X" && Board.all[4].show_mark == "X" && Board.all[6].show_mark == "X"
      true
    else
      false
    end
  end

  def o_victory?
    if Board.all[0].show_mark == "O" && Board.all[1].show_mark == "O" && Board.all[2].show_mark == "O"
      true
    elsif Board.all[3].show_mark == "O" && Board.all[4].show_mark == "O" && Board.all[5].show_mark == "O"
      true
    elsif Board.all[6].show_mark == "O" && Board.all[7].show_mark == "O" && Board.all[8].show_mark == "O"
      true
    elsif Board.all[0].show_mark == "O" && Board.all[3].show_mark == "O" && Board.all[6].show_mark == "O"
      true
    elsif Board.all[1].show_mark == "O" && Board.all[4].show_mark == "O" && Board.all[7].show_mark == "O"
      true
    elsif Board.all[2].show_mark == "O" && Board.all[5].show_mark == "O" && Board.all[8].show_mark == "O"
      true
    elsif Board.all[0].show_mark == "O" && Board.all[4].show_mark == "O" && Board.all[8].show_mark == "O"
      true
    elsif Board.all[2].show_mark == "O" && Board.all[4].show_mark == "O" && Board.all[6].show_mark == "O"
      true
    else
      false
    end
  end
end

class Board
  attr_reader :spaces

  @@spaces = []

  def initialize
    Board.clear
    9.times do
    @@spaces << Space.new()
    end
    Board.all.each {|space| space.mark(Board.all.index(space).to_s)}
  end

  def Board.all
    @@spaces
  end

  def Board.clear
    @@spaces = []
  end
end



class Space
  attr_reader :mark

  def initialize
    @mark = " "
  end

  def mark(mark)
    @mark = mark
  end

  def show_mark
    @mark
  end
end

class Player
  attr_reader :mark

  def initialize(mark)
    @mark = mark
  end

  def show_mark
    @mark
  end
end
