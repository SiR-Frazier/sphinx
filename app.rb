require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')
require('pry')

get('/') do
  new_riddle = Riddle.new
  @riddle_output = new_riddle.hash_random
  erb(:input)
end

post('/output') do
  @guess = params.fetch("guess")
  if @guess == "a clock" || "a candle" || "a teapot"
    "Success"
  else
    "Try again"
  erb(:output)
  end
end
