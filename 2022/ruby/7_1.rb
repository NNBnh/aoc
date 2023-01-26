filesystem = {}
cwd = []
File.readlines('input.txt')
.each do
  if _1.start_with? '$ cd'
    next cwd.pop if _1.split[2] == '..'
    cwd.push _1.split[2] unless _1.split[2] == '/'
    filesystem[cwd.join('/')] = 0
  else
    filesystem[cwd.join('/')] += _1.split.first.to_i
  end
end

filesystem.map do |path, _size|
  filesystem
  .filter_map { _2 if _1.start_with? path  }
  .sum
end
.filter { _1 <= 100000 }.sum
