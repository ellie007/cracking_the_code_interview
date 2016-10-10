def is_unique_chars_2(string)
  char_set = Array.new(256, false)
  string.each_char do |char|
    val = char.ord
    return false if char_set[val]
    char_set[val] = true
  end
  return true
end

puts is_unique_chars_2("Hello, World")
puts is_unique_chars_2("abcdefghijklmnopqrstuvwxyz")
