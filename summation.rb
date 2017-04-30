def square(n)
  n * n
end

def format_square_as_sum(n)
  result = ""
  1.upto(n) do |i|
    result += n.to_s
    result += " + " unless i == n
  end
  result
end

def summation_of_squares(range)
  array_to_square = range.to_a
  array_to_square.reduce(0) { |sum, n| sum + n * n }
end

squares = 1.upto(10).map { |n| square(n) }
summation_string = ""
squares.each do |square|
  summation_string += square.to_s
  summation_string += " + " unless square == squares.last
end
puts summation_string


summation = 0
i_string = ""
1.upto(10) do |i|
  i_squared = square(i)
  summation += i_squared
  puts "#{i_squared} = #{format_square_as_sum(i)}"
  if i > 1
    i_string += " + #{i_squared.to_s}"
  else
    i_string = i.to_s
  end
end
i_string += " = #{summation.to_s}"
puts
puts i_string