puts __FILE__ #absolute path

# converts relative path to absolute path
puts File.expand_path(__FILE__)

puts File.dirname(__FILE__)

puts File.join(File.dirname(__FILE__), '..')

file = File.open('./file.txt', 'w+')

file.puts "Hello World!"
# puts writes as print but returns number of char
file.write "This is Ruby\n"
file << "Ruby is nice!"
file.close
# file.read(num_of_char_to_read)
#file.gets take one line at a time
File.open('./file.txt', 'r') do |file|
    while line = file.gets
        puts "** " + line.chomp + "**"
    end 
end 

# easier way to read each line at a time
File.open('./file.txt', 'r') do |file|
    file.each_line {|line| puts line.upcase}
end

# modes : r w a r+ w+ a+

File.atime(file) #last accessed
File.mtime(file) #last modified
File.ctime(file) #last status change, avooid this one

myfile = File.new("temp.txt", "w+")
myfile.stat
myfile.stat.size
myfile.stat.readable?
myfile.stat.writable?
myfile.stat.executable?
