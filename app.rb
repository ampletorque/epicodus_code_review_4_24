require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  @count = params.fetch('sentence').word_in_string_counter(params.fetch('word'))
  erb(:result)
end
