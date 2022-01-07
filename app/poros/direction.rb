class Direction
  attr_reader :distance
  
  def initialize(data)
    @distance = data[:distance][1]
  end
end