require_relative 'my_solution'

describe Die do
  describe '#initialize' do
    it 'expects a single argument' do
      Die.instance_method(:initialize).arity.should eq 1
    end

    it 'raises an ArgumentError if sides < 1' do
      expect {
        Die.new(0)
      }.to raise_error(ArgumentError)

      expect {
        Die.new(-1)
      }.to raise_error(ArgumentError)
    end
  end

  describe '#sides' do
    it 'expects no arguments' do
      Die.instance_method(:sides).arity.should be_zero
    end

    it 'returns the number of sides given on initialization' do
      sides = rand(800)
      die = Die.new(sides)

      die.sides.should eq sides
    end
  end


  describe '#roll' do
    it 'expects no arguments' do
      Die.instance_method(:roll).arity.should be_zero
    end

    it 'returns a random number between 1 and the number of sides' do
      sides = 100 + rand(100)
      die = Die.new(sides)

      possible_values = (1..sides).to_a
      unique_rolls = Array.new(20000) { die.roll }.uniq.sort

      unique_rolls.should eq possible_values
    end
  end
end
