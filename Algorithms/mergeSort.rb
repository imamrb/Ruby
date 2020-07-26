def Merge(arr, left, mid, right)
  i = left; j = mid + 1; k = left
  sorted_array = Array.new #initialize empty array of size 'right' filled with 0

  #take smallest elements from both sides
  while (i <= mid && j <= right)
    if (arr[i] <= arr[j])
      sorted_array[k] = arr[i]
      i += 1; k += 1
    else
      sorted_array[k] = arr[j]
      k += 1; j += 1
    end
  end

  sorted_array += arr[i..mid]
  sorted_array += arr[j..right]
  
  arr[left..right] = sorted_array[left..right]
end

def mergeSort(arr, left, right)
    if(right>left) 
        mid = left + (right-left)/2
        mergeSort(arr, left, mid)
        mergeSort(arr, mid+1, right)
        Merge(arr, left, mid, right)
    end
end

puts "Input array elements: "
arr = gets
arr = arr.split.map { |i| i.to_i }

puts arr

size = arr.length
mergeSort(arr, 0, size-1)

puts "Sorted array: "
puts arr.inspect