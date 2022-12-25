def third_order(n)
  n = rand(1..n.abs)
  count = 0
  begin
    count += 1
    puts "What is result #{n} * #{n} * #{n}?"
    answer = gets.strip.to_i
    puts "Good job" if answer == n * n * n
    raise if answer != n * n * n
  rescue => error
    if count < 3
      retry
    end
    puts "Try next time"
  end
  
end
