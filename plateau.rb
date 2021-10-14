class Plateau::Grid
  attr_accessor :grid, :x_max, :y_max

  def initialize(x_max, y_max)
    @x_max = x_max
    @y_max = y_max
    @grid = Array.new(x_max) { Array.new(y_max) { '.' } }
  end

  def add_rover(rover)
    @grid[rover.x][rover.y] = rover.name
  end

  def rover_at?(x, y)
    @grid[x][y] != '.'
  end

  def rover_at(x, y)
    @grid[x][y]
  end

  def remove_rover(rover)
    @grid[rover.x][rover.y] = '.'
  end

  def print_grid
    @grid.each do |row|
      puts row.join(' ')
    end
  end
end
