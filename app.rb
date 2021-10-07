require 'sinatra'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/turn' do
    @game = $game
    turn = params[:turn]
    if turn == "Player 1 Attack" 
      @game.attack(@game.player_2)
      redirect to '/attack1'
    elsif turn == "Player 2 Attack"
      @game.attack(@game.player_1)
      redirect to '/attack2'
    end
  end

  get '/attack1' do
    @game = $game
    erb :attack1
  end

  get '/attack2' do
    @game = $game
    erb :attack2
  end

 # start the server if ruby file executed directly
 run! if app_file == $0
end
