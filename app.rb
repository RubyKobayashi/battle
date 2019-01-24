require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
      erb(:index)
  end

  post '/names' do
  session[:player_name_1] = params[:player_1_name]
  session[:player_name_2] = params[:player_2_name]
  session[:player2_hit_points] = 5
  redirect '/play'
  end

 get '/play' do
   @player1 = session[:player_name_1]
   @player2 = session[:player_name_2]
   @player2_hit_points = session[:player2_hit_points]
   erb(:play)
 end

get '/attack' do
  @player1 = session[:player_name_1]
  @player2 = session[:player_name_2]
  erb(:attack)
end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
