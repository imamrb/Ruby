class User
  attr_accessor :name, :age

  @@counter = 0

  def initialize(name:, age:, **args)
    @name = name
    @age = age
    @args = args
    puts args.inspect
  end

  def self.counter
    @@counter
  end

  def self.counter=(arg)
    @@counter += 1
  end

  def age(p)
    p.call
  end

  # def name
  #   @name
  # end

  # def age
  #   @age
  # end

  # def name=(arg)
  #   @name = arg
  # end

  # def age=(arg)
  #   @age = arg
  # end
end

# puts User.counter

# user = User.new(name: 'Istiak', age: 10)
# user2 = User.new(name: 'Mujhahid', age: 20)
# puts user.inspect
# puts user.name
# puts user.age
# user.name = 'Sadman'

# puts user.name
# puts user.inspect

# puts User.counter
