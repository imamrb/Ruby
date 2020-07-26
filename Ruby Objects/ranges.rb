x = 1..10 #inclusive range

y = 1...10 #exclusive range

puts x.begin
puts x.end
puts y.begin
puts y.end

x.include?(10) #true
x.include?(1) #true
y.include?(1) #true
y.include?(10) #False

x.class
(1..10).class

z = [*(1..10)]
puts z.inspect
charArr = [*('a'..'m')]
puts charArr.include?('f')