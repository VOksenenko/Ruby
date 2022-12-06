def count_repetitions(arr, el)
  array = []
  arr.map {|item| array << item if item == el }
  array.size
end
