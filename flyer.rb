class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

if __FILE__ == $0

  flyers = []
  1.upto(5) do |i|
    flyers << Flyer.new("Flyer #{i}", "flyer#{i}@example.com", 1000 * i)
  end
  puts flyers
  puts ""

  flyers.each { |f| puts "#{f.name} - #{f.miles_flown} miles" }

  sum = 0
  flyers.each { |f| sum += f.miles_flown }
  puts ""

  puts "total miles flown: #{sum}"
  puts ""

  promotions = {
    "United" => 1.5,
    "Delta" => 2.0,
    "Lufthansa" => 2.5
  }
  promotions.each { |name, rate| puts "Earn #{rate}x miles by flying #{name}!"}
  puts ""

  flyers.each do |flyer|
    promotions.each do |airline, rate|
      miles = flyer.miles_flown * rate
      puts "#{flyer.name} could earn #{miles} miles by flying #{airline}!"
    end
  end
  puts ""

end