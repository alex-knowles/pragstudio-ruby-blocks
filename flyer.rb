class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

if __FILE__ == $0

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

frequent_flyers = flyers.select { |f| f.miles_flown >= 3000 }
puts "Frequent flyer customers:"
puts frequent_flyers
puts ""

not_frequent_flyers = flyers.reject { |f| f.miles_flown >= 3000 }
puts "Not-so-frequent flyer customers:"
puts not_frequent_flyers
puts ""

any_platinum = flyers.any? { |f| f.status == :platinum }
puts "Any platinum status customers: " + any_platinum.to_s
puts ""

first_bronze = flyers.detect { |f| f.status == :bronze }
puts "First bronze status customer: " + first_bronze.name
puts ""

platinum, coach = flyers.partition { |f| f.status == :platinum }
puts "Platinum status customers:"
p platinum.map { |f| f.name }
puts ""

puts "Everyone else in coach:"
p coach.map { |f| f.name }
puts ""

name_tags = flyers.map { |f| "#{f.name} (#{f.status.upcase})" }
puts name_tags
puts ""

km_flown = flyers.map { |f| f.miles_flown * 1.6 }
puts "Kilometers flown:"
puts km_flown
puts ""

end