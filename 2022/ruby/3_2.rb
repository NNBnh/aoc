File.read('input.txt')
.split.each_slice(3)
.map do
  [nil, *?a..?z, *?A..?Z]
  .index _1.map(&:chars).inject(:&).first
end
.sum
