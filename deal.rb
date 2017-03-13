def deal
  faces = %w(Jack Queen King Ace)
  suits = %w(Hearts Diamonds Spades Clubs)
  random_face = faces.sample
  random_suit = suits.sample
  yield(random_face, random_suit)
end


deal { |face, suit| puts "Dealt a #{face} of #{suit}"}
