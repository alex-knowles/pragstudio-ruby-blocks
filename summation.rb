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

squares = 1.upto(10).map { |n| square(n) }
summation_string = format_addends(squares)
puts "#{summation_of_squares(1..10)} = #{summation_string}"


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