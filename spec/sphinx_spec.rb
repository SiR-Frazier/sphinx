require('pry')
require('rspec')
require('sphinx')

describe(Riddle) do
  describe('#check') do
    it("returns correct if the riddle answer is correct") do
      riddle1 = Riddle.new("a clock", "a candle", "a teapot")
      expect(riddle1.check()).to(eq("Correct"))
    end
    it("returns fail if any answers are incorrect") do
      riddle1 = Riddle.new("a clock", "a candle", "nothing")
      expect(riddle1.check()).to(eq("Fail"))
    end
  end
end
