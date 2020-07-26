def addAndSubtract(n, m)
    add = n + m 
    sub = n > m ? n - m : m - n
    return add, sub  
end

x = gets.to_i
y = gets.to_i

add, sub = addAndSubtract(x, y)

puts add, sub