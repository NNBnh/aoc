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

enough = 30000000 - (70000000 - filesystem.map(&:last).sum)
filesystem.map do |path, _size|
  filesystem
  .filter_map { _2 if _1.start_with? path  }
  .sum
end
.sort.find { _1 >= enough }
