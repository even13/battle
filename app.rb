require "sinatra/base"

class Battle < Sinatra::Base

  get '/' do
    'testing infrastructure working'
  end

run! if app_file == $0
end
