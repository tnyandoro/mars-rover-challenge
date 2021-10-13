# spec/rover_spec.rb

describe Rover do
  before :each do
      @rover = Rover.new(0, 1, 1, 'N')
  end

  describe '#move' do
      it 'should move the rover forward' do
          rover.move('M')
          expect(rover.x).to eq(1)
          expect(rover.y).to eq(2)
      end

      it 'should move the rover left' do
          rover.move('L')
          expect(rover.x).to eq(0)
          expect(rover.y).to eq(1)
      end

      it 'should move the rover right' do
          rover.move('R')
          expect(rover.x).to eq(1)
          expect(rover.y).to eq(1)
      end
  end
