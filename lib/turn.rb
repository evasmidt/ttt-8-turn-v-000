def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    index.between?(0,8) && !position_taken?(board, index)
end
  def position_taken?(board, index)
  board[index] != " "
end
def input_to_index(user_input)
  user_input.to_i - 1
end
#def move(board, index)
#  board = "X"
#end
def move(board, index, current_player = "X")
  board[index] = current_player
end

#13 passes and 3 fails
#def turn(board)
#  puts "Please enter 1-9:"
  #input = gets.strip
  #index = input_to_index(input)
  #valid_move?(board, index)
   #this part fails
      # puts "Please enter 1-9:"
  # display_board(board)
#end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)



  valid_move?(board, index) == false
  until input >= 0 && input <= 9
    puts "Invalid. Please enter 1-9:"
    valid_move?(board, index) += 1
  end

    #true
  #valid_move?(board, index) == false
    #puts "Please enter 1-9:"
    #input = gets.strip
    #  index = input_to_index(input)
   display_board(board)
  #input_to_index
  #between?(0,8)
end
#end

#if index.between?(1,9)
  #   if !position_taken?(board, index)
  #     true
  #   end
  # end
