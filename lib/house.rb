# Create a class for room functionality

require 'pry'

require './lib/room.rb'

class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end


  def add_room(room)
    rooms << room
  end

  def rooms_from_category(symbol)
    symbol = symbol.intern
    list = @rooms.find_all { |room| room.category == symbol }
  end

  def area
    @rooms.map { |room| room.area }.sum
  end

  def price_per_square_foot
    size = self.area
    value = @price.dup
    value.delete!("$")
    price_per_sqft = value.to_f / size
    price_per_sqft.round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by { |room| room.area }
  end

  def rooms_by_category
    # {room.symbol [] }
    hash = {}
    syms = @rooms.map {|room| room.category }
    syms.uniq.each {|sym| hash[sym] = rooms_from_category(sym) }
    return hash
  end

end
