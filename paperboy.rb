class Paperboy

attr_accessor :name, :experience
attr_reader :earnings

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    (@experience/2) + 50
  end

  def deliver(start_address, end_address)
       houses = (end_address) - (start_address)
     if houses < quota
       wage = 0.25 * houses - 2
     else
       wage = 0.25 * houses + (houses - quota) * (0.25)
     end

     @experience += houses
     @earnings += wage
     
  end



  def report
    puts "I'm #{@name} and i've delivered #{@experience} papers! I've earned #{@earnings} so far!"
  end

end







johnny = Paperboy.new('Johnny')

johnny.deliver(1, 101)
johnny.report
johnny.deliver(1, 101)
johnny.report
