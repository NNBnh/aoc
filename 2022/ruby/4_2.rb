input
.split                                                           irb(main):088:1* .map do |pair|
  pair.split(/[^\d]/).map(&:to_i)
  .then { [*_1.._2] & [*_3.._4] }
end
.count(&:any?)
