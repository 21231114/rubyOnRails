a = gets
b = gets
a = a.split(' ')
b = b.split(' ')
h = {}
a.each_with_index do |char, index|
  h[char] = b[index]
end
puts h
