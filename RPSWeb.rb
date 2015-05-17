require 'sinatra/base'

class RPS < Sinatra::Base
  set :views, proc { File.join(root,  'views') }

 get '/' do
   erb :index
 end

get '/new_game' do
  erb :new_game
end

run! if app_file == $PROGRAM_NAME


 end
