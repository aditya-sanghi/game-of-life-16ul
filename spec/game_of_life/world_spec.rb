require 'spec_helper'

module GameOfLife
  describe World do
    it 'should return the next generation correctly as [[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]]' do
      world = World.new([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
      expect(world.move_to_next_generation).to eq([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
    end

    it 'should return the next generation correctly for given seed only' do
      world = World.new([[DEAD, DEAD, DEAD], [DEAD, ALIVE, ALIVE], [DEAD, DEAD, DEAD]])
      expect(world.move_to_next_generation).to eq([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
    end

    it 'should return the next generation correctly for any seed' do
      world = World.new([[ALIVE, ALIVE, DEAD], [ALIVE, ALIVE, DEAD], [DEAD, DEAD, DEAD]])
      expect(world.move_to_next_generation).to eq([[ALIVE, ALIVE, DEAD], [ALIVE, ALIVE, DEAD], [DEAD, DEAD, DEAD]])
    end
  end
end
