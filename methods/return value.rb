def addAndSubtract(n, m)
    add = n + m 
    sub = n > m ? n - m : m - n
    retrun add, sub  
    #return multiple items 
    #by default last item is returned 
end

x = gets.to_i
y = gets.to_i

add , sub = addAndSubtract(x, y)

puts add, sub