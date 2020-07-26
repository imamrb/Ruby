require './Swim.rb'

class GreenSpace
  attr_accessor :name, :num_trees

  def initialize(name, num_trees)
    @name = name
    @num_trees = num_trees
  end
end

class CityPark < GreenSpace
  attr_accessor :rec_centre
end

class RecreationCentre < CityPark
  attr_accessor :name

  include Swimmable
  @@num_rec_centres = 0

  def initialize(name, num_trees)
    super(name, num_trees)
    @@num_rec_centres += 1
  end

  def whats_this
    self
  end

  def self.num_rec_centres
    @@num_rec_centres
  end
end

dufferin_park = CityPark.new("Dufferin Park", 2000)
puts dufferin_park.inspect

scadding_court = RecreationCentre.new("DunBat", 25)

RecreationCentre.num_rec_centres # => 2
scadding_court.name # => "DunBat"
scadding_court.name = "Scadding Court"
scadding_court.swim # => "Scadding Court"
scadding_court.whats_this # => #<RecreationCentre:0x0
