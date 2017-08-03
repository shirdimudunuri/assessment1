def pan_up_to_see(query, tries)
  tries.times do |i|
    if i == tries-1
      raise "Could not find '#{query}' by panning up"
    end

    if element_exists(query)
      break
    end

    pan_up
  end
end
