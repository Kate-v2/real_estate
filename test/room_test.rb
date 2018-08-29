require 'pry'

require 'minitest/autorun'
require 'minitest/pride'

require './lib/room'


class RoomTest < Minitest::Test
  def test_it_exists
    assert_instance_of Room, Room.new(:bedroom, 10, 13)
  end

  def test_it_gets_attributes
    room = Room.new(:bedroom, 10, 13)
    assert_equal :bedroom, room.category
  end

  def test_it_can_calculate_area
    room = Room.new(:bedroom, 10, 13)
    assert_equal 130, room.area
  end

end
