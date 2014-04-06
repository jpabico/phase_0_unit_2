require_relative 'my_solution.rb'

describe RPNCalculator do
  let(:rpn) { RPNCalculator.new }

  describe '#evaluate' do
    it "expects 1 argument" do
      RPNCalculator.instance_method(:evaluate).arity.should eq 1
    end
    
    it "correctly evaluates '0'" do
      rpn.evaluate('0').should be_zero
    end

    it "correctly evaluates '-1'" do
      rpn.evaluate('-1').should eq -1
    end

    it "supports addition" do
      rpn.evaluate('1 1 +').should eq (1 + 1)
    end
    
    it "adds negative numbers" do
      rpn.evaluate('1 -1 +').should be_zero
    end

    it "supports multiplication" do
      rpn.evaluate('2 2 *').should eq (2 * 2)
    end
    
    it "subtracts in the correct order" do
      rpn.evaluate('5 10 -').should eq (5 - 10)
    end

    it "handles multiple operators in a row" do
      rpn.evaluate('1 2 3 4 + + +').should eq (1 + 2 + 3 + 4)
    end

    it "correctly combines addition and multiplication" do
      rpn.evaluate('1 2 + 3 4 + *').should eq ((2 + 1) * (4 + 3))
    end

    it "correctly combines multiplication, addition, and subtraction" do
      rpn.evaluate('20 10 5 4 + * -').should eq (20 - 10*(5 + 4))
    end

    it "handles arbitrary input" do
      a, b, c = Array.new(3) { rand(100) }
      
      rpn.evaluate("#{a} #{b} - #{c} *").should eq (a-b)*c
    end
  end
end