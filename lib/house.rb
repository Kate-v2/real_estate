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

  

end
