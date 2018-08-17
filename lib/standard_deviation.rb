ages = [24, 30, 18, 20, 41]

sum_of_ages = ages.sum.to_f

number_of_elements = ages.length

mean = sum_of_ages / ages.length

subtraction_array = []

ages.map do |age|
  age - mean
  subtraction_array << age - mean
end

float_array = []

subtraction_array.map do |digit|
  digit.round(1)
float_array << digit.round(1)
end

squared_array = []

float_array.map do |digit|
  digit**2
squared_array << digit**2
end

squared_float_array = []

squared_array.map do |digit|
  digit.round(2)
squared_float_array << digit.round(2)
end

squared_float_array.sum

step_7 = squared_float_array.sum / number_of_elements

square_root = Math.sqrt(step_7)

p square_root.round(2)
