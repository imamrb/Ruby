array = [1, 2, 3, 4]

array.collect!{|i| i*2}

puts array

fruits = ["mango", "apple", "banana"]

print fruits.map {|fruit| fruit.capitalize}
puts "" 

fruits.map! do |fruit|
    if fruit == "mango"
        fruit.upcase
    else
        fruit
    end
end

puts fruits.inspect

# number of items in == number of items out
# returns array

print (1..20).collect {|num| num*20}
puts "" 

# same goes with hashes 
person = { "first_name" => "Kevin", "last_name" => "Peter" }
person["age"] = 25
puts person.inspect

person = person.map do |key, value|  #returns array
    "#{key.capitalize} : #{value}"
end

puts person.inspect