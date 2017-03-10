cards = %w(Jack Queen King Ace Joker)

cards.reverse_each { |c| puts "#{c.upcase} - #{c.length}" }
