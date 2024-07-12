#binary search with iteration
def bs_iteratio(arr, t)
  low, high = 0, arr.length - 1
  while low <= high
    m = ((low + high)/2.to_f).round

    if t == arr[m]
      return m
    elsif t > arr[m]
      low = m + 1
    else
      high = m - 1
    end
  end
  -1
end

#binary search with recursion
def bs_recursion(arr, low, high, t)
  return -1 if low > high
  m = ((low + high)/2.to_f).round
  if t == arr[m]
    return m
  elsif t > arr[m]
    return bs_recursion(arr, m + 1, high, t)
  else
    return bs_recursion(arr, low, m - 1, t)
  end
end
arr = [3, 4, 5, 6, 7, 8, 9]
p bs_iteratio(arr, 4)
p bs_recursion(arr, 0, arr.length - 1, 4)
