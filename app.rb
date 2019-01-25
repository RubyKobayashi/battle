require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    # @player1 = $player_1
    # @player2 = $player_2
    # @player2_hit_points = session[:player2_hit_points]
    @game = $game
    erb(:play)
  end

  get '/attack' do
    # @player1 = $player_1
    # @player2 = $player_2
    # Game.new.attack(@player2)
    @game = $game
    @game.attack(@game.player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
