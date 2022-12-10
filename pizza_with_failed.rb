class Pizza
  @@count = 0
  @@failed = 0
  
  def self.failInstance
    @@failed
  end
  
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
      @@failed +=1
    end
  end

  def to_s
    ingredients = @ingredients.map { |i| i }.join(",")
    "Піца № #{@number} (діагональ = #{@d}) містить [#{ingredients}]."
  end

  def description
    to_s
  end
end
