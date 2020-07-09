class Animal
  attr_accessor :noise
  attr_writer :color
  attr_reader :legs, :arms

  def initialize(name, legs = 4, arms = 0)
    @name = name
    @legs = legs
    @arms = arms
  end

  def info
    {
      "name" => @name,
      "color" => @color,
      "legs" => @legs,
      "arms" => @arms,
    }
  end

  def bark
    3.times {print "#{@noise}, "}
    puts ""
  end
end

animal1 = Animal.new("Cat")
puts animal1.info
animal1.noise = "Mewww"
animal1.bark
