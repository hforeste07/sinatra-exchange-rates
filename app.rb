require "sinatra"
require "sinatra/reloader"
require "http"
require "dotenv"


get("/") do
  @raw_response = HTTP.get("https://api.exchangerate.host/list?access_key=" + "EXCHANGE_RATE_KEY")

  erb(:homepage)
end
