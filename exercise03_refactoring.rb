class REFRIGERATOR

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    @height = height
    @width = width
    @depth = depth
  end

  def add(beverage)
  end
end

class IceBoxRefrigerator < REFRIGERATOR; end

class BrokenRefrigerator < REFRIGERATOR; end

class RootBeer; end
class Kombucha; end

class Kitchen

  GALLONS_PER_CUBIC_FOOT = 7.48052

  def initialize(refrigerator)
    @refrigerator = refrigerator
  end

  def add_beer_to_refrigerator
    @refrigerator.add( RootBeer.new )
  end

  def fridge_volume
    @refrigerator.height * @refrigerator.width * @refrigerator.depth
  end

  def fridge_volume_gallons
    fridge_volume * GALLONS_PER_CUBIC_FOOT
  end

  def to_s
    "Kitchen. Fridge volume = #{fridge_volume_gallons} gallons"
  end

end

# Current usage example:

kitchen = Kitchen.new(BrokenRefrigerator.new)
kitchen.add_beer_to_refrigerator
puts kitchen

# kitchen has an IceBoxRefrigerator with a RootBeer in it.

# Problem: you can't create a kitchen with a different fridge, and you can't
#          add any beverage other than beer.

# Goal: Create a kitchen with a BrokenRefrigerator, and add Kombucha to it.