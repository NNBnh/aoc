File.read('input.txt')
.split
.map do |pair|
  pair.split(/\D/).map(&:to_i)
  .then { [*_1.._2] & [*_3.._4] }
end
.count(&:any?)
