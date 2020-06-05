require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/' do
    @change = PigLatinizer.new(params[:user_text])
    
    erb :result
  end

end