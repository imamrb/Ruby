file = "new_file.txt"

File.exist?(file)
puts __FILE__
File.directory?(File.dirname(__FILE__))

File.size(file)

full_path = File.expand_path(file)
File.basename(full_path)

# change directory inside code
Dir.pwd
#Dir.delete('NewDir')
Dir.mkdir("NewDir")

#current directory
Dir.pwd
#change directory
Dir.chdir("..")
Dir.pwd
File.expand_path(File.dirname(__FILE__))
Dir.chdir(File.join(File.expand_path(File.dirname(__FILE__)), "Files"))
Dir.pwd
Dir.entries(".")

# REad first line of each file
Dir.foreach(".") { |entry|
  if File.file?(entry) && File.readable?(entry)
    File.open(entry, "r") do |file|
      puts file.gets
    end
  end
}
