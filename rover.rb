class Rover

  def initialize(x, y, direction)

  end

puts "Do you want to move or turn?"
  def read_instruction
    gets.chomp
    if "move"
      def move
        puts "Do you want to move one space in the current direction? Y or N?"
          gets.chomp.upcase
            if "Y"
              #move forward one space
            elsif "N"
              #back to read instruction
            else puts "Please select Y or N."

      end
    elsif "turn"
      def turn
        puts "Which direction would you like to turn? L or R?"
          gets.chomp.upcase
            if "L"
              #turn left 90 degrees
            elsif "R"
              #turn right 90 degrees
            else puts "Please select L or R"
      end
    else puts "Please select move or turn."

  end

end
