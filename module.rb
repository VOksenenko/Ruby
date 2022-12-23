module ConsoleInput
  def string
    puts "Enter any string"
    gets.chomp
  end

  def number
    puts "Enter any number"
    num = gets.chomp
    if num =~ /\./
      return num.to_f
    elsif num =~ /\,/
      num[","] = "."
      return num.to_f 
    end
    num.to_i
  end

  def symbol
    puts "Enter any letters"
    gets.chomp.to_sym
  end

  def hash
    puts "Enter hash in format 'key: value' or 'key => value'"
    str = gets.chomp
    if str =~ /\:/
      k, v = str.split(":")
      k.gsub!(/\s+/, "")
      v.gsub!(/\s+/, "")
      hash = Hash.new
      hash[k] = v
      hash
    else
      k, v = str.split("=>")
      k.gsub!(/\s+/, "")
      v.gsub!(/\s+/, "")
      hash = Hash.new
      hash[k] = v
      hash
    end
 end
