class Pizza
  @@count = 0
  attr_reader :number
  attr_writer :ingredients
  
  def initialize(d)
    @d = d
    @ingredients = []
    @@count += 1
    @number = @@count
  end

  def to_s
    ingredients = @ingredients.map { |i| i }.join(",")
    "Піца № #{@number} (діагональ = #{@d}) містить [#{ingredients}]."
  end

  def description
    to_s
  end
end
