class Cart

  def initialize
    @cart_items = []
  end

  def add_item(item)
    @cart_items.push(item)
  end
  
  def display_cart
    items = ""
    total = 0
    @cart_items.each do |item|
      items += item.name + ", "
      total += item.price
    end
    print "\nYour order consists of:\n"
    print items[0, items.length - 2] + "\n"
    printf("Your order total is: $%.2f\n", total)
  end
end