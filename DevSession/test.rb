
class String
  def empty?
    !self
  end

  def blank?

  end

  def split_by_space
    self.split(' ')
  end

  def method_missing(block)
   if block.to_s == 'no_method'
      puts "Please define your method"
   else
     super
   end
  end
end

class Test
  class NotFoundError < StandardError
    def initialize(key: )
      @key = key
    end

    def to_s
      "The key: #{@key} you are looking for can not be found! "
    end
  end

  def calculate(**args)
    error_handler do
      if args[:name].blank?
        raise NotFoundError.new(key: 'name')
      end

      puts 100 / 8
    end
  end

  def error_handler
    yield
  rescue ZeroDivisionError
    puts "You can not devide by zeror"
  rescue NotFoundError => e
    puts e.to_s
  rescue StandardError => e
    puts "Unkown error! please check"
    puts e.inspect
  end
end

puts "This is my string".no_method_1
Test.new.calculate(name: '')