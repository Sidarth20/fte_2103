class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |food_truck|
      if food_truck.inventory.include?(item)
        food_truck
      end
    end
  end

  def total_inventory
    #need hash with item as keys & quantity & food trucks as values
    @food_trucks.each_with_object({}) do |food_truck, hash|
      food_truck.inventory.each do |item|
        hash[item] = food_truck
        require 'pry'; binding.pry
      end
    end
  end
end
