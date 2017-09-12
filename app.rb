require ('sinatra')
require ('sinatra/reloader')
require ('./lib/template')

get'/' do
  erb :input
end

get'/output' do
  @num_1 = params.fetch('num_1')
  @num_2 = params.fetch('num_2')
  numbers = Numbers.new(@num_1.to_i, @num_2.to_i)
  @sum = numbers.add
  erb :output
end
