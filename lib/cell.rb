class Cell
  def empty?
    contents.nil?
  end

  def hold(contents)
    self.contents = contents
  end

  def has_contents?(contents)
    contents == contents
  end
  
  private

  attr_accessor :contents
end