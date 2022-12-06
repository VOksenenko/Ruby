def sum 
  [4,  0, -12].collect { |n| yield n}.sum
end

result = sum{ |n| n < 0 ? n ** 2 : n}
