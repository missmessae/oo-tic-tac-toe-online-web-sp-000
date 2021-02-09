class TicTacToe
  WIN_COMBINATIONS = [
    [0,1,2],  #Top row
    [3,4,5],  #Middle row
    [6,7,8],  #Bottom row
    [0,3,6],  #Left column
    [1,4,7],  #Middle column
    [2,5,8],  #Right column
    [0,4,8],  #Diagonal TL-BR
    [6,4,2]   #Diagonal BL-TR
  ]


def initialize
    @board = Array.new(9, " ")
end

#HELPERS
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input.to_i - 1
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  elsif position_taken?(board, index)
    return false
  elsif index < 0 || index > 8
    return false
  end
end

