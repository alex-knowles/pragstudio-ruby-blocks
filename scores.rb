scores = [83, 71, 92, 64, 98, 87, 75, 69]

# Exercise 4 -- Part I

high_scores = scores.select { |s| s > 80 }
p high_scores
puts ""

low_scores = scores.reject { |s| s > 80 }
p low_scores
puts ""

puts "Any scores less than 70? " + scores.any? { |s| s < 70 }.to_s
puts ""

less_than_70 = scores.detect { |s| s < 70 }
puts "A score less than 70 is #{less_than_70}"
puts ""

# Exercise 4 -- Part II

scores_doubled = scores.map { |s| s * 2 }
puts "Scores doubled: "
p scores_doubled
puts ""

sum_of_scores = scores.reduce(0, :+)
puts "Sum of scores: #{sum_of_scores}"
puts ""

evens, odds = scores.partition { |s| s.even? }
puts "Even scores: #{evens}"
puts "Odd scores: #{odds}"
puts ""