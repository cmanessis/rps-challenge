require 'sinatra/base'

class RPS < Sinatra::Base
  set :views, proc { File.join(root,  'views') }

 get '/' do
   erb :index
 end

 post '/' do

    $player = params[:player]
    $answer = params[:answer]

    if $player != '' && $answer == 'Vulcan'
      redirect '/new_game'

    else
      @msg_color = 'red'
      @error_msg = 'error!!!Please enter your name and answer the question correctly'
      erb :index
    end
  end

  get '/new_game' do
    erb :new_game
  end

run! if app_file == $PROGRAM_NAME


 end
