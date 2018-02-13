class Riddle
  def initialize(answer1, answer2, answer3)
    @answer1 = answer1
    @answer2 = answer2
    @answer3 = answer3
  end

  def check
    riddle_hash = {
      "I’m tall when I’m young and I’m short when I’m old. What am I?" => "a candle",
      "What has hands but can not clap?" => "a clock",
      "What starts with the letter “t”, is filled with “t” and ends in “t”?" => "a teapot",
      "You walk into a room with a match, a karosene lamp, a candle, and a fireplace. Which do you light first?" => "the match",
      "What gets wetter and wetter the more it dries?" => "a towel",
      "Name four days of the week that start with the letter “t”?" => "tuesday, thursday, today, and tomorrow."
    }

    input1 = @answer1.downcase
    input2 = @answer2.downcase
    input3 = @answer3.downcase

    # if %w{input1 input2 input3}.any? {|input|} riddle_hash[:value] >= 3
    #   "Success!"
    # end
    num_of_attempts = 0
    until num_of_attempts == 3
      if (input1 == "a clock") && (input2 == "a candle") && (input3 == "a teapot")
        num_of_attempts += 1
        return "Success!"
      elsif (input1 != "a clock") || (input2 != "a candle") || (input3 != "a teapot")
        num_of_attempts += 1
        return "Fail!"
      end
    end
  end

end
