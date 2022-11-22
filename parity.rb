def parity() 
    #type your code here
    puts ("Enter integer number")
    number = gets.chomp.to_i
     
    case (number % 2)
        when 0 then puts("#{number} is even")
        else puts("#{number} is odd")
    end
end
   
parity() 


