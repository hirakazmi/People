class Shopping_cart

  def initialize
    @item = []
  end

  def add(item)
    @items << item
    end
end

class Item

  def initialize(name, shelf_price, sales_tax, import_tax)
    @name = name
    @shelf_price = shelf_price
    @sales_tax = sales_tax
    @import_tax = import_tax
  end
end

book = Item.new("book", 12.49, false, false )
music_cd = Item.new("music_cd", 14.99, true, false)
shopping_cart1 =  Shopping_cart.new
shopping_cart1.add(books)
