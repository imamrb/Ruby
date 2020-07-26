class Student
    attr_accessor :level
    attr_reader :name
    attr_writer :grade
   
    def initialize(name, level)
        @name = name
        @level = 10 
    end
    
    # setter
    def grade=(grade)
        @grade = grade
    end
    # getter
    def name
        @name
    end

end

s1 = Student.new("Imam", "HSC")
s1.name="Imam"

puts s1.name
puts s1.inspect