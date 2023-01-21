input
.lines.map(&:split)
.map do
  1 + 'XYZ'.index(_2) + [3, 6, 0, 6, 0][
    'XYZ'.index(_2) - 'ABC'.index(_1)
  ]
end
.sum
