languages = ["Ruby", "JavaScript"]
# => ["Ruby", "JavaScript"]

languages.push("Clojure")
# => ["Ruby", "JavaScript", "Clojure"]

languages.unshift("C++")
# => ["C++", "Ruby", "JavaScript", "Clojure"]

languages.insert(3, "Python")
# => ["C++", "Ruby", "JavaScript", "Python", "Clojure"]

languages.include?("Ruby")
# => true
puts languages.first

h = { d: 100, a: 200, v: 300, e: 400 }

h.length
# => 4

h.delete("a")
# => 200

puts h[:d]
# => 3
h[:z] = 300
puts h.inspect
