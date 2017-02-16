require 'player'

describe Player do

  subject(:player) { described_class.new }

  it 'can choose a move' do
    expect([:A1, :B2, :C3]).to include player.choose_move([:A1, :B2, :C3])
  end
  
end