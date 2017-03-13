def three_times
  1.upto(3) { |n| yield n }
end

three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end
puts ""

def n_times(n)
  1.upto(n) { |x| yield x }
end

n_times(5) do |n|
  puts "#{n} situp"
  puts "#{n} pushup"
  puts "#{n} chinup"
end
