class Paperboy

attr_accessor :name, :experience
attr_reader :earnings

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    (@experience/2) + 50
  end
end

johnny = Paperboy.new('Johnny', 50, 1/4)
timmy = Paperboy.new('Timmy', 100, 1/4)

puts johnny.quota
