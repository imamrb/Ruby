5.times do |i|
    print "Hello #{i} "
    puts "\n" if i == 4
end

5.times {
    |i| print "Hello Block " 
    puts "\n" if i == 4
} 

# detect and find works same
puts (1..10).find {|i| i%3 == 0}
puts (1..10).detect {|i| (7..10).include?(i*2)} 

# findall and
print (1..100).find_all { |i| i%7==0 } 
puts "" 
print (1...100).select {|i| i%7 == 0}
puts ""

#check if a value is present
(1..10).any? {|i| i%3==0} #true
(1..10).all? {|i| i%3 == 0} #false
puts ""
puts [*1..10].delete_if{|i| i%3 == 0}.inspect