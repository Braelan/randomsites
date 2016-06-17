files = [
 File.new('splitlist/first.txt', 'w+'), 
 File.new('splitlist/second.txt', 'w+'),
 File.new('splitlist/third.txt', 'w+'),
 File.new('splitlist/fourth.txt', 'w+'),
 File.new('splitlist/fifth.txt', 'w+'),
 File.new('splitlist/sixth.txt', 'w+'),
 File.new('splitlist/seventh.txt', 'w+'),
 File.new('splitlist/eighth.txt', 'w+'),
 File.new('splitlist/ninth.txt', 'w+'),
 File.new('splitlist/tenth.txt', 'w+')
]

File.open("miltopsites.txt", "r").each_with_index do |line, index|
  print index
  if index % 100000 == 0
    $f = files.shift()
  end
  $f.write(line)
end



