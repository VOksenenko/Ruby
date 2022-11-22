divider = 21
counter = 5

until  counter == 0
    counter -= 1
    print("Введіть число, яке буде ділитися на #{divider} : ")
    number = gets.chomp.to_i
    if (number % divider == 0) then
        if (number != divider) then
            puts("Чудово")
            break
        else 
            puts("Число не повинно дорівнювати #{divider}")
                
        end        
    else 
        puts("Невірно. Спробуйте ще раз")
        puts("Кількість спроб завершилася :(") if counter == 0
    end     
end