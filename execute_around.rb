def tag(tag)
  print "<#{tag}>"
  print yield
  print "</#{tag}>\n"
end

tag(:h1) { "Breaking News!" }
puts ""

tag(:h2) { "Massive Ruby Discovered!" }
puts ""

tag(:ul) do
  tag(:li) { "It sparkles!" }
  tag(:li) { "It shines!" }
  tag(:li) { "It mesmerizes!" }
end
puts ""


def with_debugging
  puts "Got Here!"
  result = yield
  puts "Result was #{result}"
end

with_debugging do
  magic_number = (23 - Time.now.hour) * Math::PI
end
puts ""
