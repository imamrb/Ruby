class Student
    # setter
    def name=(name)
        @name = name
    end

    # getter
    def name
        @name
    end
end

s1 = Student.new
s1.name="Imam"

puts s1.name