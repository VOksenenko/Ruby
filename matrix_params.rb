def matrix_params(array)
  array = array
  
  hash = {"m" => 0,
          "u" => 0,
          "o" => 0}

  for i in 0...array.size do
    for j in 0...array.size do
      hash["m"] += array[i][j] if i == j
      hash["u"] += array[i][j] if i < j
      hash["o"] += array[i][j] if i > j
    end
  end
  
  return hash
end
