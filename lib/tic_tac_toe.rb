class TicTacToe
  
  
  WIN_COMBINATIONS = [
    
    [0,1,2], # Top row
    [3,4,5],  # Middle row
    [6,7,8],  # Bottom row
    [0,3,6],  # Left col
    [1,4,7],  # Middle col
    [2,5,8],  # Right col
    [0,4,8],  # Diagnol 1
    [2,4,6]
    
    ]
  
  
  def initialize(board = nil)
    @board = board ||Array.new(9, " ") 
  end
  
  def display_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end
