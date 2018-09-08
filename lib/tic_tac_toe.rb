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
  end


  def current_player
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
