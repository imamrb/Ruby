def findLongestWord
    menu = ["Home", "History", "Products", "Services", "Contact Us"]
    longest_word = menu.inject do |memo, item|
        if memo.length > item.length
            memo
        else
            item
        end
    end
    puts longest_word
end

findLongestWord


def oddOrEven?(n)
    n % 2 == 0 ? "even" : "odd"  #last statement returned automatically
end

puts oddOrEven?(554)
