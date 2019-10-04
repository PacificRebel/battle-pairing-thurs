class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 20
  end

  def lose_health
    @hp -= 10
  end


end
