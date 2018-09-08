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
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts(" ")
    puts(" ")
  end

  def input_to_index(input)
    if index == -1
      puts "Invalid entry."
    elsif !valid_move?(index)
      puts "Space taken. Choose again."
      index = -1
    end
  end

  def move(index)
  #assumes position_taken? = no, and valid_move? = yes, and index is valid
    #maybe problem here - current player is a method
      @board[index] = current_player
  end

  def play
    iter = 1
    while iter <= 9 && !@over?
      puts "play:  iter = #{iter}"
      success = @turn
      @display_board
      if success
        iter += 1
      end
    end
    #so iter is either at 9, or we've won.
    if draw?
      puts "Cat's Game!"
    else
      puts "Congratulations #{winner}!"
    end
  end

  def turn_count
    count = 0
    @board.each do | entry |
      if entry == "O" || entry == "X"
        count += 1
      end
    end
    puts "turn_count:  #{@board}"
    puts "turn_count: #{count}"
    return count
  end

  def turn
    token = 'X'
    #input = get_input(token)
    index = -1

    #while !index.between(0,8)
    while !index.between?(0,8)
      puts "Choose position [1-9]:  "
      input = gets
      #puts " "
      index = @input_to_index(input)
      if index == -1
        puts "Invalid entry."
      elsif !@valid_move?(index)
        puts "Space taken. Choose again."
        index = -1
      end
  end

  def winner
    win_array = won?(@board)

    if !win_array
      return nil
    elsif @board[win_array[0]] == "X"
      return "X"
    elsif @board[win_array[0]] == "O"
      return "O"
    end
  end
end
