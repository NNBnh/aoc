input
.split(/\n[\s\d]*\n\n/) => stacks, procedure

stacks.lines.map do
  _1[1..].chars.each_slice(4).map(&:first)
end
.transpose.map { _1.reverse.join.strip.chars } => stacks

procedure.lines.map do
  _1.split(/[^\d]+/)[1..].map(&:to_i)
end
.each do
  stacks[_3 - 1].append *stacks[_2 - 1].pop(_1)
end

stacks.map(&:last).join
