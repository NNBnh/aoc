File.read('input.txt')
.split
.map do
  [nil, *'a'..'z', *'A'..'Z']
  .index _1.chars.each_slice(_1.size / 2).inject(:&).first
end
.sum
