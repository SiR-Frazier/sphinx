require('pry')
require('rspec')
require('sphinx')

describe(Riddle) do
  describe('#check') do
    it("returns correct if the riddle answer is correct") do
      riddle1 = Riddle.new("a clock", "a candle", "a teapot")
      expect(riddle1.check()).to(eq("Success!"))
    end
    it("returns fail if any answers are incorrect") do
      riddle1 = Riddle.new("a clock", "a candle", "nothing")
      expect(riddle1.check()).to(eq("Fail!"))
    end
    it("returns number of attempts once answers are provided") do
      riddle1 = Riddle.new("a clock", "a candle", "nothing")
      expect(riddle1.check()).to(eq("Fail!"))
    end

  end
end
