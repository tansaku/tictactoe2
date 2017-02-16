require 'cell'

describe Cell do

  subject (:cell) { described_class.new }

  it 'is empty by default' do
    expect(cell).to be_empty
  end

  it 'is not empty when it has contents' do
    cell.hold('X')
    expect(cell).not_to be_empty
  end

  it 'can report current contents' do
    cell.hold('X')
    expect(cell).not_to be_empty
  end

  it 'can check equality of contents' do
    cell.hold('X')
    expect(cell).to have_contents('X')
  end
end