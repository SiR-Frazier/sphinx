class Riddle

  def hash_random
    @riddle_hash = {
      "I’m tall when I’m young and I’m short when I’m old. What am I?" => "a candle",
      "What has hands but can not clap?" => "a clock",
      "What starts with the letter “t”, is filled with “t” and ends in “t”?" => "a teapot"
    }

    keys = @riddle_hash.keys
    @sample_riddle = keys[rand(keys.size)]
  end
end
