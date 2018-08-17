class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    average = ages.sum / ages.length.to_f
  end

  def subtract_average
    ages.map do |age|
      sub_average = age - average_age
      sub_average.round(1)
    end
  end

  def squared
    subtract_average.map do |number|
      squared_number = number ** 2
      squared_number.round(2)
    end
  end

  def standard_deviation_age
    square_root = Math.sqrt(squared.sum / squared.count)
    square_root.round(2)
  end
end
