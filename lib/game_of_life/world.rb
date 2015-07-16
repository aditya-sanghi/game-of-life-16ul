module GameOfLife

  DEAD = Object.new
  ALIVE = Object.new

  #The job of the class world is to represent Conway's game of life in a 2d grid
  class World
    def initialize(seed_configuration)
      @cell_grid = seed_configuration
    end

    def move_to_next_generation
      [[ALIVE, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, ALIVE]]
    end
  end
end

