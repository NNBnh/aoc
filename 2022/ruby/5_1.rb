File.read('input.txt')
.split(/\n[\s\d]*\n\n/) => stacks, procedure

stacks.lines.map { _1[1..].chars.each_slice(4).map(&:first) }
.transpose.map { _1.reverse.join.strip.chars } => stacks

procedure.lines.map { _1.split(/\D+/)[1..].map(&:to_i) }
.each { stacks[_3 - 1].append *stacks[_2 - 1].pop(_1).reverse }

stacks.map(&:last).join
