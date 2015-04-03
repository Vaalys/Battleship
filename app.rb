require 'active_record'
require 'pg'
require 'pry'
require_relative 'lib/ocean'
require_relative 'lib/ship'
require_relative 'lib/cell'


ActiveRecord::Base.establish_connection({
  database: 'battleship',
  adapter: 'postgresql'
})


def new_board
  # call the method in ocean to create new board, add an erase at start
end

def view_current_board
end

def shoot_torpedo
end

def view_turns_taken
  # count hit_ornot somehow in cells
end


def game
  puts "1. Would you like to play battleship?"
  puts "2. Exit program"
  main_response = gets.chomp.to_i

  while true # document number of turns and break when limit is reached
    if main_response == 1
      puts "Let's play!"
      puts "1. New Game"
      puts "2. View Current Board"
      puts "3. Shoot torpedo"
      puts "4. View # of turns taken"
      puts "5. Quit game"
      play_response = gets.chomp.to_i

      if play_response == 1
        # erase old data and build_cells method

      elsif play_response == 2
        # view_current_board method

      elsif play_response == 3
        puts "Enter the x coordinate to send a torpedo on the board."
        torpedo_x = gets.chomp.to_i
        puts "Now, enter the y coordinate"
        torpedo_y = gets.chomp.to_i
        # maybe use a cell_at(x, y) method?
          if #
            puts "It's a hit!"
            ##
          else #
            puts "You missed!"
            ##
          end

      elsif play_response == 4
        # view_turns_taken method

      else play_response == 5
        break
      end



    else main_response == 2
      puts "You've quit the game."
      break
    end

  end

end

binding.pry
