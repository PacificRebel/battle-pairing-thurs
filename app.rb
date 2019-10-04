require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    player1 = Player.new(params[:Player1])
    player2 = Player.new(params[:Player2])
    Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/attack' do
    @game = Game.instance
    @game.attack
    erb :attack
  end

  run! if app_file == $0
end
