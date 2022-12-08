class Pizza
  @@count = 0
  
  def initialize(ingredients)
    @ingredients = ingredients
    @@count += 1
    @number = @@count
  end

  def description
    ingredients = @ingredients.map { |i| i.to_s }.join(",")
    print "Піца № #{@number} містить [#{ingredients}]."
  end
end
