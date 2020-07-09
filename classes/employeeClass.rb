class Employee
    attr_reader :name, :designation, :location
    attr_writer :designation, :location

    @@employee_list = []
    
    # Class Reader Method
    def self.employee_list
        @@employee_list
    end

    def self.employee_list=(array=[])
        @@employee_list = array
    end

    # Class Writer Method
    def self.create_employee(name, designation, location)
        employee = Employee.new(name, location)
        employee.location = "Chandpur"
        return employee
    end

    def initialize(name, designation)
        @name =  name 
        @designation =  designation
        @@employee_list << self
        puts "Welcome new employee #{@name}!"
    end

    def summary
        { 
             "name" => @name,
             "designation" => @designation
         }
    end
end

emp1 = Employee.new("Imam", "Jr Software Engineer")
emp1.location = "Dhaka"
puts emp1.summary

emp1.location = "Noakhali"

emp2 = Employee.create_employee("Shuvra", "Jr Software Engineer", "Chandpur")
puts emp2.summary

puts emp2.name 
puts emp2.location

Employee.employee_list << ["X", "Y"]
puts Employee.employee_list.inspect