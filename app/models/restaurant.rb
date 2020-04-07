class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def reviews

  end

  def customers

  end

  def self.all
    @@all
  end
end
