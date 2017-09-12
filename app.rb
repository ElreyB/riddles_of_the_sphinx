require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/sphinx')
require ('pry')

SPHINX = Sphinx.new
get'/' do
  # rand(1..9) to make random questions appear
  @question1 = SPHINX.ask_question(1)
  @question2 = SPHINX.ask_question(4)
  @question3 = SPHINX.ask_question(7)
  erb :input
end

post'/output' do

  @answer1 = params.fetch('answer1')
  SPHINX.answer_given(@answer1)
  @answer2 = params.fetch('answer2')
  SPHINX.answer_given(@answer2)
  @answer3 = params.fetch('answer3')
  SPHINX.answer_given(@answer3)


  if SPHINX.correct == 3 && SPHINX.wrong == 0
    @string_to_display = "You have answered all three correctly, you win treasure!!"
  elsif SPHINX.correct == 2 && SPHINX.wrong == 1
    @string_to_display = "You have answered two correctly, good for you."
  elsif SPHINX.correct == 1 && SPHINX.wrong == 2
    @string_to_display = "You have answered one correctly, hmmmmmm....."
  else
    @string_to_display = "You have answered all three incorrectly, I must eat you now!!!"
  end
  erb :output
end
