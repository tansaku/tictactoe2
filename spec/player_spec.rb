require 'player'

describe Player do

  subject(:player) { described_class.new(rules_klass) }
  let(:board) { double :board}
  let(:rules_klass) { double :rules_klass}

  it 'can choose a move' do
    allow(rules_klass).to receive(:valid_moves).with(board).and_return(:A1)
    expect(player.choose_move(board)).to eq :A1
  end
  
end