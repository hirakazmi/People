require_relative 'mars'

puts "What is the size of the plateau?"
plateau_size = gets.chomp.split

puts "What is rovers start position and where is it facing?"
start_position_and_direction = gets.chomp.split

puts "What are rovers move instructions?"
move_instructions = gets.chomp.split("")





p plateau_size[0].to_i, plateau_size[1].to_i
start_position_and_direction = start_position_and_direction[0].to_i, start_position_and_direction[1].to_i


rover1 = Rover.new(start_position_and_direction[0], start_position_and_direction[1], start_position_and_direction[2])
p rover1.read_instruction(*move_instructions)
