arr = [1,2,3,4,5]

# starting value 10
totalSum = arr.inject(10) {|memo, n| memo + n}

puts totalSum

totalMul = arr.inject { |memo, n| puts memo; memo * n } # gunottor dhara
puts totalMul

# find the longest word
menu = ["Home", "History", "Products", "Services", "Contact Us"]
# => ["Home", "History", "Products", "Services", "Contact Us"]
longest_word = menu.inject do |memo, item|
    if memo.length > item.length
        memo
    else
        item
    end
end
puts longest_word

menu.inject(10) {|memo, item|  memo + item.length} #memo initail value ?




