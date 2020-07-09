arr = [8, 4, 3, 7, 10]

arr.sort
arr.sort {|v1, v2| v1 <=>  v2 }

arr.sort.reverse

animals = ["dog", "snake", "elephant", "tiger", "deer"]
animals.sort.reverse

# custom sort by length
animals.sort {|v1, v2| v1.length <=> v2.length}
animals.sort_by { |name| name.length}


#sort hashes
hash = {"a" => 111, "b" => 333, "z" => 000}
hash.sort  #[["a", 111], ["b", 333], ["z", 0]]

# sort by hash value 
hash.sort {|item1, item2| item1[1] <=> item2[1]}



