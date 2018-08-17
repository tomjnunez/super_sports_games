require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

class EventTest < Minitest::Test
  def test_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_instance_of Event, event
  end

  def test_it_has_attributes
    event = Event.new("Curling", [24, 30, 18, 20, 41])

      assert_equal "Curling", event.name
      assert_equal [24, 30, 18, 20, 41], event.ages
  end

  def test_it_has_a_max_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 41, event.max_age
  end

  def test_it_has_a_min_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

      assert_equal 18, event.min_age
  end

  def test_it_has_an_average_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 26.6, event.average_age
  end

  def test_it_can_subtract_average
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal [-2.6, 3.4, -8.6, -6.6, 14.4], event.subtract_average
  end

  def test_it_can_square
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal [6.76, 11.56, 73.96, 43.56, 207.36], event.squared
  end

  def test_it_has_a_standard_deviation_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

      assert_equal 8.28, event.standard_deviation_age
  end
end
