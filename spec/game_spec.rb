require 'game'

describe Game do
  
  subject(:game) { described_class.new(board_klass) }
  let(:board_klass) {double(:board_klass)}
  let(:player) { double(:player, symbol: 'X') }
  let(:board) { double(:board) }
  let(:cell) { double(:cell) }

  it 'handles player moves by asking the user for a move' do
    allow(board_klass).to receive(:new).and_return(board)
    expect(player).to receive(:choose_move).with(board).and_return :A1
    allow(board).to receive(:contents_of).with(:A1).and_return cell
    allow(cell).to receive(:hold).with('X')
    game.handle_move(player)
  end

   # indications of a demeter violation?

   # better to have the game class only interact with the board class
   # and have only the board class know about the cell class

  it 'handles player moves by updating board with player move' do
    allow(board_klass).to receive(:new).and_return(board)
    allow(player).to receive(:choose_move).with(board).and_return :A1
    expect(board).to receive(:contents_of).with(:A1).and_return cell
    allow(cell).to receive(:hold).with('X')
    game.handle_move(player)
  end

end