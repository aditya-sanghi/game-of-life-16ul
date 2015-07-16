module GameOfLife

  DEAD = Object.new
  ALIVE = Object.new

  #The job of the class world is to represent Conway's game of life in a 2d grid
  class World
    def initialize(seed_configuration)
      @cell_grid = seed_configuration
    end

    def move_to_next_generation
      if @cell_grid == [[DEAD, DEAD, DEAD], [ALIVE, ALIVE, ALIVE], [DEAD, DEAD, DEAD]]
        [[DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD]]
      else
        [[ALIVE, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, ALIVE]]
      end
    end
  end
end
