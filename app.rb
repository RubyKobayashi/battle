require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
      erb(:index)
  end

  post '/names' do
  session[:player_name_1] = params[:player_1_name]
  session[:player_name_2] = params[:player_2_name]
  redirect '/play'
  end

 get '/play' do
   @player1 = session[:player_name_1]
   @player2 = session[:player_name_2]
   erb(:play)
 end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
