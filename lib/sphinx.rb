class Riddle
  def initialize(answer1, answer2, answer3)
    @answer1 = answer1
    @answer2 = answer2
    @answer3 = answer3
  end

  def check
    if (@answer1 == "a clock") && (@answer2 == "a candle") && (@answer3 == "a teapot")
      "Correct"
    else
      "Try again"
    end
  end
end
