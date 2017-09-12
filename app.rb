require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/sphinx')
require ('pry')

SPHINX = Sphinx.new
get'/' do
  # rand(1..8) to make random questions appear
  @question1 = SPHINX.ask_question(4)
  erb :input
end

post'/output' do
  @answer = params.fetch('answer')
  SPHINX.answer_given(@answer)

  if SPHINX.correct > 0 && SPHINX.wrong == 0
    @string_to_display = "You have answered correctly!!!!!"
  else
    @string_to_display = "You have answered incorrectly!!!"
  end
  erb :output
end
