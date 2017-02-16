require 'tictactoe'

describe TicTacToe do

  subject(:tictactoe) { described_class }
  let(:board1) { Board.new({A2: 'X', A3: 'O', B1: 'X', B3: 'O',C1: 'X', C2: 'O'}) }
  
  it 'can report a list of valid moves' do
    expect(tictactoe.valid_moves(board1)).to match [:A1, :B2, :C3]
  end
end