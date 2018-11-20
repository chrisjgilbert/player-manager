require 'sinatra/base'

class PlayerManager < Sinatra::Base

  get '/' do
    'hello'
  end

  run! if app_file == $0

end
