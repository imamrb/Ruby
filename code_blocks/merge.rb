# Merge is for only hashes

h1 = {"a" => 111, "b" => 222, "c" => 333}
h2 = {"c" => 444, "d" => 234 }

h3 = h2.merge(h1)

h1.merge!(h2)

puts h3, h1, h2

h2.merge!(h1) {
    |key, old, new| 
    new*=2 
    print key, ' ',  old ," ", new, "\n" 
    new
} #modify only conflicted value
puts h2