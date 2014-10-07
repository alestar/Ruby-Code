class BookInStock
  #getters and setters
  attr_reader :isbn, :price
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    price = price.to_f
    if price <= 0
      raise ArgumentError.new("Must have price")
    elsif isbn == ''
      raise ArgumentError.new("Must have an ISBN number")
    else
      @isbn = isbn
      @price = price
    end 
  end
  
  def price_as_string 
    sprintf('$%0.2f',price).gsub(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1,")
  end
end



#b2 = BookInStock.new("a", 3.2)
#p b2