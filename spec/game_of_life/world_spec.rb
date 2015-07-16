require 'spec_helper'

module GameOfLife
  describe World do
    it 'should return the next generation correctly as [[ALIVE, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, ALIVE]]' do
      world = World.new([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
      expect(world.move_to_next_generation).to eq([[ALIVE, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, ALIVE]])
    end
  end
end
