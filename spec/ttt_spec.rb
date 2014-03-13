 require 'rspec'
 require 'ttt.rb'

describe Game do
  describe "initialize" do
    it "initializes a game" do
      test_game = Game.new()
      test_game.should be_an_instance_of Game
    end
  end

  describe "x_victory?" do
    it "checks if a game is won by X" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all.each {|space| space.mark("X")}
      test_game.x_victory?.should eq true
    end

    it "checks the number two space" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all[2].mark("X")
      test_game.x_victory?.should eq false
    end

    it "checks the number zero space" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all[0].mark("X")
      test_game.x_victory?.should eq false
    end

    it "checks the number one space" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all[1].mark("X")
      test_game.x_victory?.should eq false
    end


    it "checks the number three space" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all[3].mark("X")
      test_game.x_victory?.should eq false
    end


    it "checks the number four space" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all[4].mark("X")
      test_game.x_victory?.should eq false
    end


    it "checks the number five space" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all[5].mark("X")
      test_game.x_victory?.should eq false
    end


    it "checks the number six space" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all[6].mark("X")
      test_game.x_victory?.should eq false
    end


    it "checks the number seven space" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all[7].mark("X")
      test_game.x_victory?.should eq false
    end


    it "checks the number eighy space" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all[8].mark("X")
      test_game.x_victory?.should eq false
    end
  end

  describe "o_victory?" do
    it "checks if a game is won by O" do
      test_game = Game.new()
      test_board = Board.new()
      Board.all.each {|space| space.mark("O")}
      test_game.o_victory?.should eq true
    end
  end
end

 describe Board do
  before do
    Board.clear
  end

   describe "initialize" do
    it "initializes a board" do
      test_board = Board.new()
      test_board.should be_an_instance_of Board
      test_board.all.length.should eq 9
    end
  end
end

 describe Space do
   describe "initialize" do
     it "initializes a space" do
     test_space = Space.new()
     test_space.should be_an_instance_of Space
   end
 end

   describe "mark" do
     it "marks a space with an X or an O" do
       test_space = Space.new()
       test_space.mark("X").should eq "X"
       test_space.mark("O").should eq "O"
     end
   end
end

describe Player do
  describe "initialize" do
    it "initializes a player with an X or O mark" do
      test_player_1 = Player.new("X")
      test_player_2 = Player.new("O")
      test_player_1.should be_an_instance_of Player
      test_player_2.should be_an_instance_of Player
    end
  end

  describe "show_mark" do
    it "displays a player's mark" do
      test_player_1 = Player.new("X")
      test_player_2 = Player.new("O")
      test_player_1.show_mark.should eq "X"
      test_player_2.show_mark.should eq "O"
    end
  end
end

