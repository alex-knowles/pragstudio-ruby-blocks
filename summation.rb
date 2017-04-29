def square(n)
  n * n
end

def format_square_as_sum(n)
  result = ""
  1.upto(n) do |i|
    if (i == n)
      result += n.to_s
    else
      result += "#{n.to_s} + "
    end
  end
  result
end


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
puts i_string