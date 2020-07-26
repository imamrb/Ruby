[3, 0, 5, 2, 15, 9, 0].reject do |x|
    x.zero?
end.sort.reverse

# [15, 9, 5, 3, 2]
s = "3 6 8 9 2 3 4"
s = s.split.map!{|x| x.to_i}

puts s.inspect
# [3, 6, 8, 9, 2, 3, 4]
