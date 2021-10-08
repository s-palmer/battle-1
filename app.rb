require 'sinatra'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/attack'


class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game
    erb :play
  end

  post '/attack' do
    Attack.run(@game.opponent_of(@game.current_turn))
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game
    erb :attack
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect '/play'
  end

  get '/game-over' do
    @game
    erb :game_over
  end



  # post '/turn' do
  #   @game = $game
  #   @game.set_turn(params[:turn])
  #   @game.player_attack
  #   # turn = params[:turn]
  #   # if turn == "Player 1 Attack" 
  #   #   @game.attack(@game.player_2)
  #   #   redirect to '/attack1'
  #   # elsif turn == "Player 2 Attack"
  #   #   @game.attack(@game.player_1)
  #   #   redirect to '/attack2'
  #   # end
  # end

  # get '/attack2' do
  #   @game = $game
  #   erb :attack2
  # end

 # start the server if ruby file executed directly
 run! if app_file == $0
end
