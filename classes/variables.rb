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

s1 = Student.new("Matz", "10")
puts s1.inspect # #<Student: @name="Matz", @level=10>
puts s1.name # Matz
s1.grade= "A+"
puts s1.inspect

puts s1.grade # undefined method `grade'