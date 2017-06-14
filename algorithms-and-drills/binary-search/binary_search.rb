def binary_search(str, sorted_arr, min_index=0, max_index=(sorted_arr.length - 1))
  mid_point = (min_index + max_index) / 2

  return mid_point if str == sorted_arr[mid_point]  
  return nil if min_index == max_index && str != sorted_arr[min_index]

  if str < sorted_arr[mid_point]
    max_index = mid_point - 1
  else
    min_index = mid_point + 1
  end
  
  binary_search(str, sorted_arr, min_index, max_index)
end
