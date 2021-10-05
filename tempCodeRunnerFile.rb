Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end