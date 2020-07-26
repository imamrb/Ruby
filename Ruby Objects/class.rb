class Parent 
    @@counter = 10
    def modify
        puts "This is parent class"
        puts @@counter
    end 
end

class Child < Parent
    def initialize
        obj = Parent.new
        puts obj.modify 
    end
    puts 100, @@counter
end

obj2 = Child.new
obj2.modify
obj2.counter
