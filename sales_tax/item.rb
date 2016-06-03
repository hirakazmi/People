
class Item

attr_reader :calculated_tax

  def initialize(name, shelf_price, sales_tax, import_tax)
    @name = name
    @shelf_price = shelf_price
    @sales_tax = sales_tax
    @import_tax = import_tax
    @calculated_tax = 0
  end

  def tax
    sales_tax = 0.10
    import_tax = 0.05

    if @sales_tax == true && @import_tax == true
      @calculated_tax = @shelf_price * (sales_tax + import_tax)
    elsif @sales_tax == true && @import_tax == false
      @calculated_tax = @shelf_price * (@shelf_price + sales_tax)
    elsif @sales_tax == false && @import_tax == true
      @calculated_tax = @shelf_price + import_tax
    elsif @sales_tax == false && @import_tax == false
      @calculated_tax
    end
    return @calculated_tax.round(2)
  end

  def total_price
    @shelf_price + tax
  end

end

class Reciept

  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def printout


end

music_cd = Item.new("music_cd", 14.99, true, false)
music_cd.tax
puts music_cd.calculated_tax
perfume = Item.new("perfume", 47.50, true, true)
puts perfume.tax
puts perfume.total_price
book = Item.new("book", 12.49, false, false )
puts book.tax


shopping_cart1 =  Shopping_cart.new

shopping_cart1.add(perfume)
shopping_cart1.add(music_cd)
shopping_cart1.add(book)
