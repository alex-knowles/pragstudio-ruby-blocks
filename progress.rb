def progress
  0.step(100, 10) do |percent_complete|
    yield percent_complete
  end
end

progress { |percent| puts percent }
puts ""
