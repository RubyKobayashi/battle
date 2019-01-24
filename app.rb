require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
      erb(:index)
  end

  post '/names' do
  $player_1 = Player.new(params[:player_1_name])
  $player_2 = Player.new(params[:player_2_name])
  session[:player2_hit_points] = 5
  redirect '/play'
  end

 get '/play' do
   @player1 = $player_1.name
   @player2 = $player_2.name
   @player2_hit_points = session[:player2_hit_points]
   erb(:play)
 end

get '/attack' do
  @player1 = $player_1.name
  @player2 = $player_2.name
  erb(:attack)
end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
