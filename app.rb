require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  
  post '/' do
    @converter = PigLatinizer.new(params[:user_text])
    
    erb: 
  end

end