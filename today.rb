def workday(today)
    #type your code here
    today = today
    case today
        when "пн", "вівт", "сер", "чт", "пт" then puts("#{today} - будній день")
        when "суб", "нед" then puts("#{today} - вихідний день")
        else puts("#{today} - точно день тижня? Можна вводити тільки значення пн, вівт, сер, чт, пт, суб, нед")
    end   
end

workday("с")




