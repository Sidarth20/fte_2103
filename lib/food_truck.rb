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

  def stock(item, quantity)
    if @inventory.include?(item) == false
      @inventory[item] = quantity
    else
      @inventory[item] += quantity
    end
  end

  #can't get last test to pass. want to try Iteration 3
  # For method below, I need to remove the string converter into helper & call it within
  def potential_revenue
    @inventory.sum do |key, value|
      key.price.slice!(0)
      revenue = key.price.to_f * value
      # require 'pry'; binding.pry
    end
  end
end
