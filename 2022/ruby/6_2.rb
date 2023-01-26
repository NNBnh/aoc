File.read('input.txt')
.chars.each_cons(14)
.find_index { _1.uniq.count == 14 } + 14
