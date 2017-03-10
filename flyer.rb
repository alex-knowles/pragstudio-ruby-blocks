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
    flyers << Flyer.new("Flyer #{i}", "flyer#{i}@example.com", 1 * i)
  end
  puts flyers

  flyers.each { |f| puts f.email}

  sum = 0
  flyers.each { |f| sum += f.miles_flown }
  puts "total miles flown: #{sum}"
end