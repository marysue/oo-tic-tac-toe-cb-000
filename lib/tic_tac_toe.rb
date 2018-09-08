class TicTacToe
  WIN_COMBINATIONS = [
                        [0,1,2],
                        [3,4,5],
                        [6,7,8],
                        [0,3,6],
                        [1,4,7],
                        [2,5,8],
                        [0,4,8],
                        [2,4,6]
  ]

  def initialize
    @board - [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def draw?
  end

  def full?
  end

  def over?
  end

  def position_taken?(index)
    if (@board[index] == 'X' || @board[index] == 'O')
      puts "position_taken:  returning true"
      puts "position_taken?:  #{board}"
      puts "position_taken?:  #{index}"
      return true
    else
      puts "position_taken?:  returning false."
      return false
    end
  end


  def valid_move?
  end

  def won?
    #won? : returns winning combination or false if no winning comb
    #for each row, column and diagnonal combination
    @WIN_COMBINATIONS.each do | win_combination |
      #grab the winning combination of indices we are looking for
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]

      #extract the value of these winning indices from the board
      position_1 = @board[win_index_1]
      position_2 = @board[win_index_2]
      position_3 = @board[win_index_3]

      #check if either team has won
      if (position_1 == "X" && position_2 == "X" && position_3 == "X") ||
         (position_1 == "O" && position_2 == "O" && position_3 == "O")
         #we break out of here if we have a winning row, col, or diagnonal
         return win_combination
      end #end if
  end #end do while
  #if we get here there were no winning combinations
  return false
end #end won?


  def current_player
    # board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
    #  returns current player = 'X' for first move
    #  returns current player = 'Y' for second move
    count = turn_count
    if count % 2 == 0
      puts "count = #{count}, player = 'X'"
      player = 'X'
    else
      puts "count = #{count}, player = 'O'"
      player = 'O'
    end
    return player
  end

  def display_board
  end

  def input_to_index
  end

  def move
  end

  def play
  end

  def turn_count
  end

  def turn
  end

  def winner
  end



end
