class RoverGrid
    attr_accessor :grid_size, :grid_size_x, :grid_size_y, :grid_size_z
    
    def initialize(grid_size)
        @grid_size = grid_size
        @grid_size_x = grid_size.split(' ')[0].to_i
        @grid_size_y = grid_size.split(' ')[1].to_i
        @grid_size_z = grid_size.split(' ')[2].to_i
    end
end