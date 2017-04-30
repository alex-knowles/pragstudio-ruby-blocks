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
  range.reduce(0) { |sum, n| sum + n * n }
end

def print_sum_of_squares(range)
  # print each square number and its component parts
  range.each do |n|
    puts "#{square(n)} = #{format_square_as_sum(n)}"
  end

  # calculate the summation of the squared numbers and
  # print out the expression each square number being summed
  squares = range.map { |n| square(n) }
  summation_string = format_addends(squares)
  puts
  puts "#{summation_of_squares(range)} = #{summation_string}"
end

if __FILE__ == $0
  print_sum_of_squares(1..10)
end
