require 'sinatra/base'
require_relative 'lib/cpu'
require_relative 'lib/outcome'

class RPS < Sinatra::Base
  cpu = CPU.new
  outcome = Outcome.new
  set :views, proc { File.join(root,  'views') }

get '/' do
   erb :index
end

get '/new_game' do
  erb :new_game
end

post '/new_game' do

if params[:choice]
  @p1 = params [:choice]
  @p2 = cpu.choice
  @outcome = outcome.make @p1,@p2
  erb :outcome
else
  $player = params[:name]
  erb :new_game
end




run! if app_file == $PROGRAM_NAME

end
end
