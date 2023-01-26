File.read('input.txt')
.chars.each_cons(4)
.find_index { _1.uniq.count == 4 } + 4
