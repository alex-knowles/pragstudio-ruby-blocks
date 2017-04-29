def square(n)
  n * n
end

summation = 0
i_string = ""
1.upto(10) do |i|
  j_string = i.to_s
  2.upto(i) do |j|
    j_string += " + #{i.to_s}"
  end
  i_squared = square(i)
  summation += i_squared
  j_string += " = #{i_squared.to_s}"
  puts j_string
  if i > 1
    i_string += " + #{i_squared.to_s}"
  else
    i_string = i.to_s
  end
end
i_string += " = #{summation.to_s}"
puts i_string