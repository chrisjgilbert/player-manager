require 'sinatra/base'
require_relative './lib/player.rb'

class PlayerManager < Sinatra::Base

  get '/' do
    @players = Player.all
    erb :index
  end

  run! if app_file == $0

end
