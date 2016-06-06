require_relative 'mars'

class MissionControl

  attr_accessor :x_position, :y_position, :direction, :position, :move_instructions

  def input
    puts "What is the size of the plateau?"
    @plateau_size = gets.chomp.gsub("", "").split

    puts "What is rovers start position and where is it facing?"
    @start_position = gets.chomp.split("")
    @x_position = @start_position[0].to_i
    @y_position = @start_position[1].to_i
    @direction = @start_position[2]


    puts "What are rovers move instructions?"
    @move_instructions = gets.chomp.gsub("", "").split("")

    rover_1

  end

  def rover_1

    puts @plateau_size
    @rover1 = Rover.new(@x_position, @y_position, @direction)
    @rover1.read_instruction(@move_instructions)
    puts @rover1.status

  end

end

# puts plateau_size
MissionControl.new.input
