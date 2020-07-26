def binary_search(array, item)
    first = 0
    last = array.length - 1

    while first <= last
        mid = first + (last-first)/2
        if(array[mid] == item)
            return "#{item} found in position #{mid}"
        elsif array[mid] > item
            last = mid - 1 
        else
            first = mid + 1
        end
    end
    return "#{item} not found in the array"
end

array = [3, 6, 9, 12, 15, 18, 21]
result = binary_search(array, 12)
puts result