puts("Введіть ціну цукерок для 1 кг")
price = gets.chomp.to_f
5.times do 
  puts("Введіть в кг вагу цукерок, ціну яких Ви хочете дізнатися")
  quanity = gets.chomp.to_f
  puts (quanity * price)
end
