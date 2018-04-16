require("sinatra")
require("sinatra/contrib/all") if development?
also_reload("./models/*")

require_relative("./models/game.rb")

get "/" do
  erb(:home)
end

get "/:player1/:player2" do
  @outcome = Game.compare_hands(params[:player1].downcase, params[:player2].downcase)
  erb(:result)
end
