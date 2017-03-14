class Application
  attr_accessor :environment

  def initialize
    @environment = :development
  end

  def connect_to_database
    puts "Connecting to #{@environment} database..."
  end

  def handle_request
    puts "Handling #{@environment} request..."
  end

  def write_to_log
    puts "Writing to #{@environment} log file..."
  end

  def in_production
    original_environment = @environment
    @environment = :production
    yield
    @environment = original_environment
    puts "Reset environment to #{@environment}"
  end
end

app = Application.new
app.connect_to_database
app.handle_request
app.write_to_log
puts ""

app.in_production do
  app.connect_to_database
  app.handle_request
  app.write_to_log
end
puts ""
