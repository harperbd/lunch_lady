require './dish'
require './cart'

class LunchLady

  def initialize
    populate_dishes
    @shopping_cart = Cart.new
    display_menu
    display_cart
  end

  def display_cart
    @shopping_cart.display_cart
  end

  def display_menu
    display_dishes(@main_dishes)
    puts "What main dish would you like?"
    handle_dish_input(@main_dishes, gets.strip.to_i)
    for i in 0..1 do
      display_dishes(@side_dishes)
      puts "What side dish would you like?"
      handle_dish_input(@side_dishes, gets.strip.to_i)
    end
  end

  def handle_dish_input(dishes, choice)
    @shopping_cart.add_item(dishes[choice])
  end

  def display_dishes(dishes)
    dishes.each_with_index {|dish, i|
      print i.to_s + ") "
      print "#{dish.display}\n"
    }
    print "\n"
  end

  def populate_dishes
    @main_dishes = []
    meatloaf = MainDish.new("Meatloaf", 3)
    @main_dishes.push(meatloaf)
    chicken = MainDish.new("Chicken", 5)
    @main_dishes.push(chicken)
    turkey = MainDish.new("Turkey", 3)
    @main_dishes.push(turkey)

    @side_dishes = []
    green_beans = SideDish.new("Green Beans", 1.00)
    @side_dishes.push(green_beans)
    corn = SideDish.new("Corn", 1.50)
    @side_dishes.push(corn)
    carrots = SideDish.new("Carrots", 1.75)
    @side_dishes.push(carrots)
  end
end

LunchLady.new
# lunch_lady = LunchLady.new
# lunch_lady.display_main_dishes
# lunch_lady.display_side_dishes