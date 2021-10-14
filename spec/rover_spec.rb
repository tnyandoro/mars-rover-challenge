require_relative '../rover'

describe 'Rover' do
  let(:rover) { Rover.new('1 1 N') }

  describe '#move' do
    it 'should move the rover forward' do
      rover.move
      expect(rover.y_coordinate).to eq(2)
    end

    it 'should move the rover left' do
      rover.command('LMLMLMLMM')
      expect(rover.x_coordinate).to eq(1)
    end

    it 'should move the rover right' do
      rover.command('MMRMMRMRRM')
      expect(rover.y_coordinate).to eq(3)
      expect(rover.x_coordinate).to eq(3)
    end
  end

  describe '#command' do
    it 'follows provided instructions' do
      rover.command('LLL')
      expect(rover.x_coordinate).to eq(1)
      expect(rover.direction).to eq('E')
    end
  end

  describe '#turn_left' do
    it 'changes direction 90 deg anti-clockwise' do
      rover.turn_left
      expect(rover.direction).to eq('W')
    end
  end

  describe '#turn_right' do
    it 'changes direction 90 deg clockwise' do
      rover.turn_right
      expect(rover.direction).to eq('E')
    end
  end
end
