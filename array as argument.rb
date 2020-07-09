# modifiied array is returned
def Method(arr)
    arr.map! {|i| i*3}
end

arr = gets
arr = arr.split.map{|i| i.to_i}
puts arr.inspect
Method(arr)

puts arr

# variable is not modified
def modify(x)
    x *= 2
end
x = 10
modify(x)
puts x