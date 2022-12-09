class Pizza
  @@count = 0
  
  def initialize(d, ingredients)
    @d = d
    @ingredients = []
    @number = 0
    if @d == 25 or @d == 50
      @@count += 1
      @number = @@count
      @ingredients = ingredients
    else
      @d = 0
    end
  end

  def description
    def to_s
      ingredients = @ingredients.map { |i| i }.join(",")
      "Піца № #{@number} (діагональ = #{@d}) містить [#{ingredients}]."
    end
    to_s
  end
end
