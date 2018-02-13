require('pry')
require('rspec')
require('sphinx')

describe(Riddle) do
  describe('#check') do
    it("returns correct if the riddle answer is correct") do
      riddle1 = Riddle.new("a clock")
      expect(riddle1.check()).to(eq("Correct"))
    end
  end
end
