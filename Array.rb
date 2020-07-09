array = ["a", "b", "c"]

puts "#{array.class} #{array}"

# array = nil

# puts "#{array2.class} #{array}"

array << "2"

puts "#{array.class} #{array}"

array2 = ["a", "b", "c", [3, 2, 1], "A", "B", "C"]

puts array2.inspect

puts array2[3].sort.inspect

# array to string

puts array.to_s

print array2.join.class, ": ", array2.join("+"), "\n"

array << 3
array.push(4)
puts array.inspect

array.uniq # print the unique array
array.uniq! #change the original to array to uniq
array.delete(0)

array.push(9)
array.pop
array.shift
array.unshift(2) # push in front

newArr = array + [2, 3, 4]
puts newArr.inspect

newArr.uniq!
puts newArr.inspect
newArr.push(2, 3, 4)
puts newArr.inspect
newArr = array - [2] # Delete all occurances of 2
puts newArr.inspect
