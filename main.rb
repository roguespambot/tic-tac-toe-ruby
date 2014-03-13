require './lib/ttt.rb'

def create_game
  $game = Game.new()
  $board = Board.new()
  $filled = 0
end

def show_board
  print "*======*\n"
  print "!" + Board.all[0].show_mark + "|" + Board.all[1].show_mark + "|" + Board.all[2].show_mark + "!\n"
  print "!" + Board.all[3].show_mark + "|" + Board.all[4].show_mark + "|" + Board.all[5].show_mark + "!\n"
  print "!" + Board.all[6].show_mark + "|" + Board.all[7].show_mark + "|" + Board.all[8].show_mark + "!\n"
  print "*======*\n"
end

def player_turn(player)
  puts "Choose a space to mark:"
  print ">"
  space_to_mark = gets.chomp

  if space_to_mark.to_i.to_s == space_to_mark && space_to_mark != "9"
    if Board.all[space_to_mark.to_i].show_mark == "X" ||  Board.all[space_to_mark.to_i].show_mark == "O"
      puts "This space is already taken, please choose another."
      player_turn(player)
    else
      Board.all[space_to_mark.to_i].mark(player)
      $filled += 1
    end
  else
    puts space_to_mark
    puts "Thats not a valid option."
    player_turn(player)
  end

  if $game.x_victory? == true
    show_board
    puts "X wins!"
    exit
  elsif $game.o_victory? == true
    show_board
    puts "O wins!"
    exit
  end

  if $filled == 9
    puts "The game is a draw."
    exit
  end
end

def computer_player_turn(player)
  space_to_mark = rand(8)
  if Board.all[space_to_mark.to_i].show_mark == "X" || Board.all[space_to_mark.to_i].show_mark == "O"
    computer_player_turn(player)
  else
     Board.all[space_to_mark.to_i].mark(player)
     $filled += 1
  end

  if $game.x_victory? == true
    show_board
    puts "X wins!"
    exit
  elsif $game.o_victory? == true
    show_board
    puts "O wins!"
    exit
  end

  if $filled == 9
    puts "The game is a draw."
    exit
  end
end

create_game

puts "Welcome to Tic-Tac-Toe. Press 1 to play against the computer or 2 to play against a friend."

player_choice = gets.chomp.to_i

if player_choice == 1
  loop do
    show_board
    player_turn("X")
    show_board
    computer_player_turn("O")
  end

elsif player_choice == 2
  loop do
    show_board
    player_turn("X")
    show_board
    player_turn("O")
  end

else
  puts "Sorry, that's not a valid input."
end
