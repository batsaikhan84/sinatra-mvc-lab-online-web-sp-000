require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/' do
    @latinizer = PigLatinizer.new(params[:word])
    
    erb :result
  end

end