input
.lines.map(&:split)
.map do
  %w[312 123 231]['ABC'.index(_1)]['XYZ'.index(_2)].to_i
  + 'XYZ'.index(_2) * 3
end
.sum
