# Create a class for room functionality

require 'pry'

class Room
  attr_accessor :category

  def initialize(category, width, length)
    @category = category.intern
    @width = width
    @length = length
  end

  def area
    @width * @length
  end



end
