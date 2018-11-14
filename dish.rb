class Dish
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def display
    printf("%s($%.2f)", @name, @price)
  end
end

class MainDish < Dish
  def initialize(name, price)
    super(name, price)
  end
end

class SideDish < Dish
  def initialize(name, price)
    super(name, price)
  end
end