require_relative 'board'

class Game
  def initialize(board_klass = Board)
    @board = board_klass.new
  end

  def handle_move(player)
    move = player.choose_move(board)

    # ^^^ maybe game should be giving the list of valid moves?
    # but then player needs to be able to analyse the full game state

    board.contents_of(move).hold(player.symbol)

    # alternative to the above would be board.handle_move(move, by: player)
  end

  private

  attr_reader :board
end