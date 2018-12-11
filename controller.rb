require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/rps_model')
also_reload('./models/*')


get '/welcome_page'do
  erb(:welcome_page)
end


get '/:hand1/:hand2' do
   @winner = RPSGame.check_win(params[:hand1], params[:hand2])
   erb(:result)
end
