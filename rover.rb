class Rover

  # def plateau(length, width)
  # puts "Please indicate the length of the plateau you are on"
  #  length = gets.chomp.to_i
  # puts "please indicate the width of the plateau"
  #  width = gets.chomp.to_i
  # end


  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instructions(command)
    command.chars.each do |input|
      if input == "R"
        r_turn
      elsif input == "L"
        l_turn
      elsif input == "M"
        move
      else
        puts "Error!!! Please input R, L, or M as they are the only accepted commands."
      end
    end

    puts "The Rover is at #{@x}, #{@y}, facing #{@direction}"


end

  def r_turn
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    elsif @direction == "W"
      @direction = "N"
    else
      puts "ERROR!!"
    end
  end

  def l_turn
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    elsif @direction == "E"
      @direction = "N"
    else
      puts "ERROR!!"
    end
  end

  def move
    puts "inside method move"
    if @direction == "N"
      @y += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "E"
      @x += 1
    elsif @direction == "W"
      @x -= 1
    else
      puts "ERROR!!"
    end
  end

end


puts "what is your rover's starting position on the X axis"
x = gets.chomp.to_i
puts "what is your rover' starting position on the Y axis"
y = gets.chomp.to_i
puts "what direction are you facing (N/E/S/W)?"
direction = gets.chomp.upcase
puts "your rover is currently at #{x}, #{y} and it is facing #{direction}"




puts "Please input the entirety of your rover's movements"
puts "To turn the rover left input 'L'."
puts "To turn the rover right input 'R'."
puts "To move the rover one space in the direction"
puts "you are facing input 'M'"
puts "please input all of your desired instructions"
puts "then press Enter"

instruction = gets.chomp.upcase

# puts "The rover is at location #{x} by #{y}, facing #{direction}"


connor_rover = Rover.new(x, y, direction)
connor_rover.read_instructions(instruction)
