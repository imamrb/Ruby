person = { "first_name" => "Kevin", "last_name" => "Peter" }
person["age"] = 25

puts person

puts person.key("Kevin")
puts person["first_name"]

mixed = { 1 => ["a", "b", "c"], "hello" => [1, 2, 3], "last" => {} }
puts mixed["hello"].inspect

puts mixed.keys.inspect
puts mixed.values.inspect
puts mixed.length
puts mixed.size

puts mixed.to_a.inspect # turn to array > [[value, pair]]
mixed.clear
mixed = {}
puts mixed
