class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory == {}
      0
    else
      @inventory[item]
    end
  end
  # require 'pry'; binding.pry

  def stock(item, quantity)
    if @inventory.include?(item) == false
      @inventory[item] = quantity
    else
      @inventory[item] += quantity
    end
  end
end
