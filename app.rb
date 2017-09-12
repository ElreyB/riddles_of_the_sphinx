require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/sphinx')
require ('pry')

SPHINX = Sphinx.new
get'/' do
  @question = SPHINX.ask_question(rand(1..8))
  erb :input
end

post'/output' do
  @answer = params.fetch('answer')
  SPHINX.answer_given(@answer)

  if SPHINX.correct > 0
    @string_to_display = "You have answered correctly!!!!!"
  else
    @string_to_display = "You have answered incorrectly!!!"
  end
  erb :output
end
