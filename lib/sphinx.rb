class Riddle
  def initialize(answer)
    @answer = answer
  end

  def check
    if @answer == "a clock"
      "Correct"
    else
      "Try again"
    end   
  end
end
