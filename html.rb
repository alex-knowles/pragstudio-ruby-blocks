def tag(tag)
  print "<#{tag}>"
  print yield
  print "</#{tag}>"
end

tag(:h1) { "Breaking News!" }
puts ""

tag(:h2) { "Massive Ruby Discovered!" }
puts ""
