class Rover

attr_accessor :direction, :y_coordinate, :x_coordinate

  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction(instructions)
    instructions.each do |order|
      if order == "L" || order == "R"
        turn(order)
      else order == "M"
        move
      end
    end
  end

  def turn(command)
    if (direction = "N" && command == "L") || (direction == "S" && command == "R")
      @direction == "W"
    elsif (direction = "E" && command == "L") || (direction == "W" && command == "R")
      @direction == "N"
    elsif (direction = "S" && command == "L") || (direction == "N" && command == "R")
      @direction == "E"
    else (direction = "W" && command == "L") || (direction == "E" && command == "R")
      @direction == "S"
  end

  def move
    if direction == "N"
      @y_coordinate += 1
    elsif direction == "S"
      @y_coordinate -= 1
    elsif direction == "E"
      @x_coordinate += 1
    elsif direction == "W"
      @x_coordinate -= 1
    end
  end
end
