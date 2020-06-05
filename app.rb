require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinizer' do
    l = PigLatinizer.new
    @latinizer = l.latinizer(params[:user_phrase])
    
    erb :result
  end

end