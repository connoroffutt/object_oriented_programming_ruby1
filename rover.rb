class Rover

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

puts "please indicate the size of the plateau you are on"

puts "what is your starting position?"
puts "please include the direction you are facing."

puts "Do you want to move or turn?"
  def read_instruction
    command = gets.chomp.downcase
    if command == "move"
      move
    elsif command == "turn"
      turn
  end

      def move
        puts "Do you want to move one space in the current direction? Y or N?"
        gets.chomp.upcase
            if "Y"
              #if facing North y+=1
              #if facing South y-=1
              #if facing East x+=1
              #if facing West x-=1
            elsif "N"
              #back to read instruction
            else puts "Please select Y or N."
      end


    elsif "turn"
      def turn
        puts "Which direction would you like to turn? L or R?"
          gets.chomp.upcase
            if "L"
              if @direction == "N"
                direction = "W"
              elsif @direction == "W"
                direction = "S"
              elsif @direction == "S"
                direction = "E"
              elsif @direction == "E"
                direction = "W"
            elsif "R"
              #if facing N turn E
              #if facing E turn S
              #if facing S turn W
              #if facing W turn N
            else puts "Please select L or R"
      end
    else puts "Please select move or turn."

  end

end

connor.Rover.new(0,0, "N")

puts "please input the entirety of your rover's movement"
puts "to turn the rover left please input 'L', to turn the rover right please input 'R'"
puts "to move the rover one space in the direction it is facing please input 'M'"
puts ""
