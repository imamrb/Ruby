file = File.new('file.txt', 'r+')

file.pos

file.read(3)

file.pos

file.lineno #how many times gets called
file.rewind #same as pos but reset lineno counter gets

file.gets
file.lineno
file.rewind

while line = file.gets
    puts "Line #{file.lineno}: #{line}"
end

file.eof?

file.write(" Hmm Nice!")

file.rewind

while line = file.gets
  puts "Line #{file.lineno}: #{line}"
end

file.close

require 'fileutils'

FileUtils.copy('file.txt', 'copy_file.txt')

File.rename('copy_file.txt', 'new_file.txt')
#File.delete('new_file.txt')
