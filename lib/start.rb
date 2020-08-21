#!/usr/bin/env ruby
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
require_relative '../lib/players/human.rb'
require_relative '../lib/players/computer.rb'

def game_start

  puts "Welcome to Command Line Tic Tac Toe!"
  puts "What kind of game would you like to play? Please choose player mode:
  0 - Computer vs Computer
  1 - You vs Computer
  2 - You vs Your friend"

  player_mode = gets.strip
  
  if player_mode == "1"
    puts "Do you want to go first? [y/n]"
    if gets.strip == "y"
      Game.new(Players::Human.new("X"), Players::Computer.new("O"), Board.new).play
    else   
      Game.new(Players::Computer.new("X"), Players::Human.new("O"), Board.new).play
    end
  elsif player_mode == "0"
    Game.new(Players::Computer.new("X"), Players::Computer.new("O"), Board.new).play

  elsif player_mode == "2"
    Game.new(Players::Human.new("X"), Players::Human.new("O"), Board.new).play
  end
  puts "Would you like to play again? [y/ n]"
  
end


game_start until gets.strip == "n"



# game_start unless gets.strip == "n"

