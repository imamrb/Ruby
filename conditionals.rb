year = 2301

if year % 4 == 0 
    puts "Leap Year!"
elsif year % 100 == 0 && year % 400 ==0 
    puts "Leap year"
else 
    puts "Not a Leap Year"
end

puts "This is not even year" if not (year % 2) == 0

x = 1 
y = nil
unless y
    puts "Y is empty"
end

case
when x%2 == 0
  puts "x is even"
when x%2 == 1
  puts "x is odd"
else
  puts "x is even or odd"
end


case x 
when 0
  puts "x is 0"
when 1
  puts "x is 1"
when 2
  puts "x is 2"
else
  puts "x is not 0, 1, or 2"
end

# Ternary Operator
x =  5
puts x % 2 == 0 ? "Even" : "Odd"

y = nil 
puts y ? x = y : x = 0

puts x = y || -1 # if y is empy take -1 as default

y = 10
x = nil
x ||= y  #if x is empty take value of y
puts x

puts '****** For Loop ******'
for i in 1..10 do
    puts "count = #{i}"
end

arr = ['mango', 'apple', 'orange']
for i in arr do 
    puts i
end

puts "\n***for Each ***"
arr.each do |fruit|
    puts "I love #{fruit.capitalize}"
end


puts "\n***do..while Loop ***"
x = 0
loop do
    x += 2
    next if x == 6 # c++ continue
    puts x 
    break if x >= 10
end

puts "\n** While loop**"
x = 0
while x < 10
    x += 2
    puts x 
end 


puts "\n *** Upto ***** "
1.upto(10) do |num|
    puts "Hello " + num.to_s
end
