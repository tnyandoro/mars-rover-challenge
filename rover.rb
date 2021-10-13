class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(position)
    position = position.split(' ');
    @x_coordinate = position[0]
    @y_coordinate = position[1]
    @direction = position[2]
  end

  def command(instructions)
    instructions.each_char do |instruction|
      case instruction
      when 'L'
        turn_left
      when 'R'
        turn_right
      when 'M'
        move
      end
    end
  end

  def move
    case @direction
    when 'N'
      @y_coordinate = @yCoordinate.to_i + 1
    when 'S'
      @y_coordinate = @yCoordinate.to_i - 1
    when 'E'
      @x_coordinate = @xCoordinate.to_i + 1
    when 'W'
      @x_coordinate = @xCoordinate.to_i - 1
    end
  end

  def turn_right
    case @direction
    when 'N'
      @direction = 'E'
    when 'S'
      @direction = 'W'
    when 'E'
      @direction = 'S'
    when 'W'
      @direction = 'N'
    end
  end

  def turn_left
    case @direction
    when 'N'
      @direction = 'W'
    when 'S'
      @direction = 'E'
    when 'E'
      @direction = 'N'
    when 'W'
      @direction = 'S'
    end
  end
end

rover = Rover.new('1 2 N')
puts '************INITIALMOVES************'
puts rover.x_coordinate
puts rover.y_coordinate
puts rover.direction
puts '************VALUES AFTER MOVE LEFT************'
rover.command('LMLMLMLMM')
puts rover.x_coordinate
puts rover.y_coordinate
puts rover.direction

rover2 = Rover.new('3 3 E')
puts '>>>>>>>>>>>>************INITIALMOVES************<<<<<<<<<<<<<<'
puts rover2.x_coordinate
puts rover2.y_coordinate
puts rover2.direction

puts '*************VAUES AFTER MOVE RIGHT***********'
rover2.command('MMRMMRMRRM')
puts rover2.x_coordinate
puts rover2.y_coordinate
puts rover2.direction
