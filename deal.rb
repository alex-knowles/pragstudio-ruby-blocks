def deal
  if !block_given?
    puts "No deal!"
  else
    faces = %w(Jack Queen King Ace)
    suits = %w(Hearts Diamonds Spades Clubs)
    random_face = faces.sample
    random_suit = suits.sample
    score = yield(random_face, random_suit)
    puts "You scored a #{score}!"
  end
end


deal do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  score = face.length + suit.length
  score
end
puts ""

deal
puts ""
