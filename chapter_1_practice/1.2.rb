def reverse_a_string(string)
  (string.length/2).times do |i|
    string[i], string[-(i + 1)] = string[-(i + 1)], string[i]
  end
  puts string
end

reverse_a_string("Hello, World!")
