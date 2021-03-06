require "sinatra/base"
require_relative 'lib/player'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:name_one])
    $player_two = Player.new(params[:name_two])
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    erb :play
  end

  get '/attack' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    $player_two.take_damage
    erb :attack
  end

run! if app_file == $0
end
