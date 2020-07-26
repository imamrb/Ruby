class User
    attr_accessor :name
    attr_writer :password

    def initialize(name, password)
        @name = name
        @password = password
    end

    def fullName=(input)
        @fullName = input
    end

    def fullName 
        @fullName
    end
end
user1 = User.new("Nolan", "*****")
puts user1.inspect 
user1.fullName = "Nolan Trump"
puts user1.inspect

class Admin < User
    @@admin_list = []

    def initialize(name, password)
        super(name, password)
        @@admin_list << name
        puts "Admin #{@name} is Created"
    end

    def self.admin_list
        @@admin_list
    end

    def self.admin_list=(list=[])
        @@admin_list = list
    end
end

Admin.admin_list = ["Mr.Kim", "Mr.Vladimir"]
puts Admin.admin_list.inspect
admin = Admin.new("Mrs.Jacinda", "12345")
puts Admin.admin_list.inspect

require './ExpanseModule.rb'
class Manager < User
    include ManageExpanse
end

man1 = Manager.new("X", "333")
puts man1.inspect
man1.caculate_expanse