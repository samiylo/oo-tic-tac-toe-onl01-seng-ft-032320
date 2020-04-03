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
  
  
  def initialize(board = nil)
    @board = board ||Array.new(9, " ") 
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i - 1
  end
  
  def move(index, token = "X")
    @board[index] = token
  end
  
  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
    
  end
  
  def valid_move?(input)
    input.between?(0,8) && !position_taken?(input)
    
  end
  
  def turn
    puts "Player #{current_player}, please enter a number 1-9:"
    input = gets.strip
    index = input_to_index(input) 
    player = current_player
    if valid_move?(index)
      move(index, player)
      display_board
    else
      turn
    end
  end
  
  def turn_count
    @board.count{|item| item == "X" || item == "O"}
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def won
    
  end
  
end







