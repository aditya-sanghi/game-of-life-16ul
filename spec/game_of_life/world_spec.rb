require 'spec_helper'

module GameOfLife
  describe World do
    it 'should return the next generation correctly as [[ALIVE, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, ALIVE]]' do
      world = World.new([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
      expect(world.move_to_next_generation).to eq([[ALIVE, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, ALIVE]])
    end

    it 'should return the next generation correctly for given seed only' do
      world = World.new([[DEAD, DEAD, DEAD], [ALIVE, ALIVE, ALIVE], [DEAD, DEAD, DEAD]])
      expect(world.move_to_next_generation).to eq([[DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD]])
    end

    it 'should return the next generation correctly for any seed' do
      world = World.new([[DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD]])
      expect(world.move_to_next_generation).to eq([[DEAD, DEAD, DEAD], [ALIVE, ALIVE, ALIVE], [DEAD, DEAD, DEAD]])
    end
  end
end
