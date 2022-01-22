def stock_picker(arr)
  max_price = arr.max
  min_price = arr.min
  while arr.index(max_price) < arr.index(min_price)
    remove_min = arr[0...arr.index(min_price)] + arr[arr.index(min_price) + 1 ... arr.length]
    new_min = remove_min.min
    while arr.index(max_price) < arr.index(new_min) && remove_min.length > 1
      remove_min = remove_min[0 ... remove_min.index(new_min)] + remove_min[remove_min.index(new_min) + 1 ... arr.length]
      new_min = remove_min.min
    end
    if arr.index(max_price) <= arr.index(new_min)
      if max_price == arr.max
        remove_max = arr[0...arr.index(max_price)] + arr[arr.index(max_price) + 1 ... arr.length]
      else 
        remove_max = remove_max[0...remove_max.index(max_price)] + remove_max[remove_max.index(max_price) + 1...remove_max.length]
      end
      max_price = remove_max.max
    else
      min_price = new_min
    end
  end
  [arr.index(min_price), arr.index(max_price)]
end

p stock_picker([17,3,6,9,15,8,6,1,10])