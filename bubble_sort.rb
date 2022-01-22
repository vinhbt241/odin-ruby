def bubble_sort(arr)
  j = arr.length - 1
  while j > 0
    j.times do |i|
      if arr[i] > arr[i + 1]
        tmp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = tmp
      end
    end
    j -= 1
  end
  arr
end


array = [9,5,5,3,2,1,0]
p bubble_sort(array)