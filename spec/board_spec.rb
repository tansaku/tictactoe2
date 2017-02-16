require 'board'

describe Board do

  subject(:board) { described_class.new }
  
  it 'contains cells' do
    expect(board.contents_of(:A1)).to be_empty
  end
end