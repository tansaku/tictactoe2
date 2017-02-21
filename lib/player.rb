require_relative 'tictactoe'

class Player
  def initialize(rules_klass = TicTacToe)
    @rules_klass = rules_klass
  end

  def choose_move(board)
    Array(rules_klass.valid_moves(board)).sample
  end

  private 

  attr_reader :rules_klass
end