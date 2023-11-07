array = [3, 2, -8, 4, 100, -6, 7, 8, -99]

def replace(array)
  items = 0
  result = []
  max_value = array.size.times {array[items] if max_value < array[items] }

  while array.size != items
    if array[items] < 0
      result << array[items]
    else
      result << max_value
    end
    items += 1

  end
  result

end

p replace(array)
# assert new_array == [100, 100, -8, 100, 100, -6, 100, 100, -99]
