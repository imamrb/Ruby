require './user'

class Employee < User
  attr_accessor :dept

  def initialize(name: , age: , dept:)
    @dept = dept
    super
  end

  def age
    p = Proc.new { "age is #{self.age}" }
    super(p)
  end
end

# puts "Please enter name: "
# name = gets

# puts "Please enter age: "
# age = gets

# puts "Please enter dept: "
# dept = gets

emp = Employee.new(name: 'Test', age: 20, dept: 'JS')

puts emp.dept, emp.name, emp.age
