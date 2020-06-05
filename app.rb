require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinizer' do
    @latinizer = PigLatinizer.new(params[:user_phrase])
    
    erb :result
  end

end