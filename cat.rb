class Cat

  attr_writer :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def meal_time
    "#{@name} likes to eat at #{@meal_time}"
  end


end


  tina = Cat.new('Tina','Duck',17)
  jorge = Cat.new('Jorge','Salmon',18)

    puts tina.meal_time
    puts jorge.meal_time
