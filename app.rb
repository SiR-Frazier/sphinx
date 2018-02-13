require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get('/') do
  new_riddle = Riddle.new
  @riddle_output = new_riddle.hash_random
  erb(:input)
end

post('/output') do
  @hello = "Hello"
  erb(:output)
end
