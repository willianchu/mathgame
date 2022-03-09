class Player
  attr_accessor :lives, :name
  def initialize(_name)
    @name = _name
    @lives = 0
  end
end