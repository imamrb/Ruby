puts 10 + 2 #=> 13
puts 10.(+3) #=> 13

class Integer
    def +(other)
        puts "This is overloaded"
        self * other
    end 
end

puts 10 + 3

#=> This is overloaded
#=> 30
