module GameOfLife

  DEAD = Object.new
  ALIVE = Object.new

  #The job of the class world is to represent Conway's game of life in a 2d grid
  class World
    def initialize(seed_configuration)
      @cell_grid = seed_configuration
    end

    def move_to_next_generation
      grid_of_next_generation = @cell_grid.clone
      @cell_grid.each_index do |i|
        subgrid = @cell_grid[i]
        subgrid.each_index do |j|
          all_neighbour_coordinates = [[-1, 0], [1, 0], [-1, 1], [0, 1], [1, 1], [-1, -1], [0, -1], [1, -1]]
          sum_of_alive_neighbors = all_neighbour_coordinates.inject(0) do |sum, pos|
            sum + (@cell_grid[(i + pos[0]) % 3][(j + pos[1]) % 3] == ALIVE ? 1 : 0)
          end
          if @cell_grid[i][j] == ALIVE
            if (sum_of_alive_neighbors == 2 || sum_of_alive_neighbors == 3)
              grid_of_next_generation[i][j] = ALIVE
            else
              grid_of_next_generation[i][j] = DEAD
            end
          else
            if sum_of_alive_neighbors == 3
              grid_of_next_generation[i][j] = ALIVE
            else
              grid_of_next_generation[i][j] = DEAD
            end
          end
        end
      end
      grid_of_next_generation
    end
  end
end
