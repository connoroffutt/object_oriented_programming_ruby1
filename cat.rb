class Cat

  attr_writer :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def meal_time
    "#{@name} likes to eat at #{@meal_time.strftime("%l%p")}"
  end

  def meow
      "My name is #{@name} and i eat #{@preferred_food} at #{@meal_time.strftime("%l%p")}"
  end

end


  tina = Cat.new('Tina','Duck',Time.new(2016,10,20,17))
  jorge = Cat.new('Jorge','Salmon',Time.new(2016,10,20,18))

    puts tina.meow
    puts jorge.meow
