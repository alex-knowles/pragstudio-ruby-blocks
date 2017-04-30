def square(n)
  n * n
end

def format_addends(addends)
  result = ""
  addends.each_index do |index|
    result += addends[index].to_s
    result += " + " unless index == addends.count - 1
  end
  result
end

def format_square_as_sum(n)
  addends = 1.upto(n).map { || n }
  format_addends(addends)
end

def summation_of_squares(range)
  array_to_square = range.to_a
  array_to_square.reduce(0) { |sum, n| sum + n * n }
end

range = 1..10
range.each do |i|
  i_squared = square(i)
  puts "#{i_squared} = #{format_square_as_sum(i)}"
end
squares = range.map { |n| square(n) }
summation_string = format_addends(squares)
puts
puts "#{summation_of_squares(range)} = #{summation_string}"
