require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/score_page') do
  @score = params.fetch('score').scrabble_score()
  erb(:score_page)
end
